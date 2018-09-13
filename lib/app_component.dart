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
import 'src/models/rise.dart';
import 'src/routes/routes.dart';
import 'src/services/messages_service.dart';
import 'src/services/quick_action_service.dart';
import 'src/services/video_service.dart';

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
      FooterComponent,
      routerDirectives,
      NgFor,
      NgIf,
      MaterialIconComponent,
      FullscreenComponent,
      MaterialMenuComponent,
      MaterialDropdownSelectComponent,
      MaterialSelectItemComponent
    ],
    providers: [
      routerProvidersHash,
      Routes,
      materialProviders,
      MessagesService,
      VideoService,
      QuickActionService
    ],
    pipes: [
      NamePipe
    ])
class AppComponent {
  AppComponent(this.routes, this.msg, this._router, this.videoService,
      this.quickActionService) {
    subMenu = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem('Svenska'),
        MenuItem('Engelska'),
        MenuItem('Spanska'),
      ])
    ]);

    menuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(msg.about),
        MenuItem(msg.language, subMenu: subMenu),
        MenuItem(msg.library),
      ])
    ]);
    _loadResources();
    Intl.defaultLocale = 'sv_SE';
  }
  Future<void> _loadResources() async {
    loaded = false;
    await videoService.fetchAll();
    await quickActionService.fetchAll();
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
  final QuickActionService quickActionService;
  bool loaded = false;
}
