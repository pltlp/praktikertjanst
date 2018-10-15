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
import 'src/models/rise.dart';
import 'src/routes/routes.dart';
import 'src/services/course_room_service.dart';
import 'src/services/document_service.dart';
import 'src/services/messages_service.dart';
import 'src/services/quiz_service.dart';
import 'src/services/rise_service.dart';
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
      WordPreviewComponent
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
      QuizService
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
      this.quizService) {
    subMenu = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(msg.swedish),
        MenuItem(msg.english),
        MenuItem(msg.spanish),
      ])
    ]);

    menuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(msg.about, action: () => _router.navigateByUrl('${msg.home_url}/${msg.about_url}')),
        MenuItem(msg.language, subMenu: subMenu),
        MenuItem(msg.library,action: () => _router.navigateByUrl('${msg.home_url}/${msg.library_url}')),
      ])
    ]);
    Intl.defaultLocale = 'sv_SE';
    _loadResources();

    _router.onNavigationStart.listen((state) {
      window.scrollTo(0, 0);
    });
  }
  Future<void> _loadResources() async {
    loaded = false;
    await videoService.fetchAll();
    await documentService.fetchAll();
    await riseService.fetchAll();
    await courseRoomService.fetchAll();
    await wordService.fetchAll();
    await quizService.fetchAll();
    loaded = true;
  }

  Router get router => _router;
  Window get htmlWindow => window;
  MenuModel menuModel;
  MenuModel subMenu;
  final Routes routes;
  final MessagesService msg;
  List<Rise> riseContents = [];
  Router _router;

  final VideoService videoService;
  final DocumentService documentService;
  final RiseService riseService;
  final CourseRoomService courseRoomService;
  final WordService wordService;
  final QuizService quizService;
  bool loaded = false;
  bool wordListModalVisible = false;
  bool languageSelectorVisible = false;
  List<RelativePosition> get position => RelativePosition.AdjacentBottomEdge;
  String iconSize = '1.5em';
}
