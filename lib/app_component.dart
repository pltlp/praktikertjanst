import 'dart:async';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:angular_router/angular_router.dart';
import 'package:d_components/d_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';


import 'messages_all.dart' as messages;
import 'src/components/breadcrumbs_component/breadcrumbs_component.dart';
import 'src/components/footer_component/footer_component.dart';
import 'src/components/fullscreen_component/fullscreen_component.dart';
import 'src/components/home_component/home_component.dart';
import 'src/components/word_list_component/word_list_component.dart';
import 'src/components/word_preview_component/word_preview_component.dart';
import 'src/routes/routes.dart';
import 'src/services/course_room_service.dart';
import 'src/services/document_service.dart';
import 'src/services/messages_service.dart';
import 'src/services/question_service.dart';
import 'src/services/quiz_service.dart';
import 'src/services/rise_service.dart';
import 'src/services/slide_service.dart';
import 'src/services/video_service.dart';
import 'src/services/word_service.dart';

@Component(selector: 'p-app', templateUrl: 'app_component.html', styleUrls: [
  'app_component.css'
], directives: [
  BreadcrumbsComponent,
  HomeComponent,
  NavbarComponent,
  FoModalComponent,
  FooterComponent,
  routerDirectives,
  NgFor,
  NgIf,
  MaterialIconComponent,
  FullscreenComponent,
  MaterialMenuComponent,
  MaterialDropdownSelectComponent,
  MaterialSelectItemComponent,
  WordListComponent,
  FoIconComponent,
  MaterialPopupComponent,
  PopupSourceDirective,
  MaterialListComponent,
  MaterialListItemComponent,
  WordPreviewComponent,
  DropdownMenuComponent
], providers: [
  routerProviders,
  Routes,
  materialProviders,
  MessagesService,
  VideoService,
  DocumentService,
  RiseService,
  CourseRoomService,
  WordService,
  QuizService,
  SlideService,
  QuestionService
], pipes: [
  NamePipe
])
class AppComponent {
  MenuModel menuModel;
  MenuModel languageMenuModel;
  final Routes routes;
  final MessagesService msg;
  Router _router;
  final VideoService videoService;
  final DocumentService documentService;
  final RiseService riseService;
  final CourseRoomService courseRoomService;
  final WordService wordService;
  final QuizService quizService;
  final SlideService slideService;
  final QuestionService questionService;
  bool loaded = false;

  bool wordListModalVisible = false;
  bool languageSelectorVisible = false;
  String iconSize = '1.5em';
  AppComponent(
      this.routes,
      this.msg,
      this._router,
      this.videoService,
      this.documentService,
      this.riseService,
      this.courseRoomService,
      this.wordService,
      this.quizService,
      this.slideService,
      this.questionService) {
    _loadResources();

    _router.onRouteActivated.listen((state) {
      window.scrollTo(0, 0);
    });
  }

  List<RelativePosition> get position => RelativePosition.AdjacentBottomEdge;


  bool get showFooter {
    if (_router.current == null) return true;
    final urlParam = _router.current.parameters['url'];
    if (urlParam == null) return true;

    return riseService.data.values
        .where(
            (resource) => urlParam == resource.phrases[msg.currentLanguage].url)
        .isEmpty;
  }

  String _capitalize(String value) =>
      '${value.substring(0, 1).toUpperCase()}${value.substring(1)}';
  void _generateMetaDescription() {
    final description = MetaElement()
      ..content =
          '${msg.description_sentence_1}, ${msg.description_sentence_2}, ${msg.description_sentence_3}, ${msg.hg_rid_life}, ${msg.mercury}, ${msg.dental_care}, ${msg.praktikertjanst}, ${msg.sweden}, ${msg.recycling}, ${msg.ivl}, ${msg.amalgam_separator}, ${msg.environment}, ${msg.green_dental_care}, ${msg.separator}'
      ..name = 'description';
    document.head.append(description);
  
  }



  void _generateTitle() {
    final title = TitleElement()..innerHtml = '${msg.title}';

    document.head.append(title);
  }

  Future<void> _loadResources() async {
    loaded = false;

    if (Uri.base.pathSegments.isEmpty) {
      Intl.defaultLocale = 'en_GB';
      await messages.initializeMessages('en');
    } else {
      final lang = Uri.base.pathSegments.first;
      switch (lang) {
        case 'en':
          Intl.defaultLocale = 'en_GB';
          break;

        case 'sv':
          Intl.defaultLocale = 'sv_SE';
          break;

        case 'fr':
          Intl.defaultLocale = 'fr_FR';
          break;

        case 'es':
          Intl.defaultLocale = 'es_ES';
          break;

        case 'de':
          Intl.defaultLocale = 'de_DE';
          break;

        default:
          Intl.defaultLocale = 'sv_SE';
      }

      await messages.initializeMessages(lang);
    }

    await videoService.fetchAll();
    await documentService.fetchAll();
    await riseService.fetchAll();
    await courseRoomService.fetchAll();
    await wordService.fetchAll();
    await quizService.fetchAll();
    await slideService.fetchAll();
    await questionService.fetchAll();
    routes.init(msg);

    _generateMetaDescription();
    _generateTitle();
    

    languageMenuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(_capitalize('svenska'),
            action: () => window.location.href = '${Uri.base.origin}/sv/hem'),
        MenuItem(_capitalize('english'),
            action: () => window.location.href = '${Uri.base.origin}/en/home'),
        MenuItem(_capitalize('français'),
            action: () =>
                window.location.href = '${Uri.base.origin}/fr/accueil',
            enabled: true),
        MenuItem(_capitalize('español'),
            action: () => window.location.href = '${Uri.base.origin}/es/inicio',
            enabled: true),
        MenuItem(_capitalize('deutsch'),
            action: () => window.location.href = '${Uri.base.origin}/de/start',
            enabled: true)
      ])
    ]);

    menuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(_capitalize(msg.contact),
            action: () => _router.navigateByUrl(
                '${msg.currentLanguage}/${msg.home_url}/${msg.contact}')),
        MenuItem(_capitalize(msg.language), subMenu: languageMenuModel),
        MenuItem(_capitalize(msg.library),
            action: () => _router.navigateByUrl(
                '${msg.currentLanguage}/${msg.home_url}/${msg.library_url}')),
        MenuItem(_capitalize(msg.word_list),
            action: () => wordListModalVisible = true)
      ])
    ]);
    loaded = true;
  }
}
