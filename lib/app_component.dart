import 'dart:async';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
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
import 'src/services/quiz_service.dart';
import 'src/services/rise_service.dart';
import 'src/services/slide_service.dart';
import 'src/services/video_service.dart';
import 'src/services/word_service.dart';

@Component(
    selector: 'p-app',
    templateUrl: 'app_component.html',
    styleUrls: const [
      'app_component.css'
    ],
    directives: [
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
    ],
    providers: [
      routerProvidersHash,
      Routes,
      materialProviders, 
      MessagesService,
      VideoService,
      DocumentService,
      RiseService,
      CourseRoomService,
      WordService,
      QuizService,
      SlideService
    ],
    pipes: [
      NamePipe
    ])
class AppComponent {
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
      this.slideService) {
    languageMenuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(_capitalize(msg.swedish),
            action: () => window.location.href = '${Uri.base.origin}/sv/hem'),
        MenuItem(_capitalize(msg.english), action: () => window.location.href = '${Uri.base.origin}/en/home'),
        MenuItem(_capitalize(msg.french), action: () => window.location.href = '${Uri.base.origin}/fr/start'),
        MenuItem(_capitalize(msg.spanish), action: () => window.location.href = '${Uri.base.origin}/es/start'),
        MenuItem(_capitalize(msg.german), action: () => window.location.href = '${Uri.base.origin}/de/start')
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

    _loadResources();

    _router.onRouteActivated.listen((state) {
      window.scrollTo(0, 0);
    });
  }

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

  Future<void> _loadResources() async {
    loaded = false;

    // Figure out language based on url
    if (Uri.base.pathSegments.isEmpty) {
      Intl.defaultLocale = 'sv_SE';

    }
    else {
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
    }

    // TODO load arb language file

    await videoService.fetchAll();
    await documentService.fetchAll();
    await riseService.fetchAll();
    await courseRoomService.fetchAll();
    await wordService.fetchAll();
    await quizService.fetchAll();
    await slideService.fetchAll();
    routes.init(msg);
    loaded = true;
  }

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
  bool loaded = false;
  bool wordListModalVisible = false;
  bool languageSelectorVisible = false;
  List<RelativePosition> get position => RelativePosition.AdjacentBottomEdge;
  String iconSize = '1.5em';
}
