import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
import 'src/components/footer_component/footer_component.dart';
import 'src/components/fullscreen_component/fullscreen_component.dart';
import 'src/components/home_component/home_component.dart';
import 'src/models/learning_content.dart';
import 'src/models/rise.dart';
import 'src/routes/routes.dart';
import 'src/services/messages_service.dart';
import 'src/services/routerstate_sevice.dart';

@Component(
    selector: 'p-app',
    templateUrl: 'app_component.html',
    styleUrls: const [
      'app_component.css'
    ],
    directives: [
      HomeComponent,
      NavbarComponent,
      FooterComponent,
      routerDirectives,
      NgFor,
      NgIf,
      MaterialIconComponent,
      FullscreenComponent,
      MaterialMenuComponent
    ],
    providers: [
      routerProvidersHash,
      Routes,
      materialProviders,
      MessagesService,
      RouterStateService
    ],
    pipes: [
      NamePipe
    ])
class AppComponent implements OnActivate {
  AppComponent(this.routes, this.msg, this.routerStateService) {
    menuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(link1),
        MenuItem(link2),
        MenuItem(link3),
        MenuItem(link4),
      ])
    ]);
  }

  @override
  void onActivate(RouterState previous, RouterState current) async {

  }

  String get link1 => Intl.message('link', name: 'link');
  String get link2 => Intl.message('link', name: 'link');
  String get link3 => Intl.message('link', name: 'link');
  String get link4 => Intl.message('link', name: 'link');

  MenuModel menuModel;

  final Routes routes;
  final MessagesService msg;
  List<LearningContent> learningContents = [];
  List<Rise> riseContents = [];
  String _currentUrl, _previousUrl;

  String get currentUrl => _currentUrl;
  String get previousUrl => _previousUrl;
  RouterStateService routerStateService;

  String get essential_information =>
      Intl.message('essential information', name: 'essential_information');
}
