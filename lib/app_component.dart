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
import 'src/models/learning_content.dart';
import 'src/models/rise.dart';
import 'src/routes/routes.dart';
import 'src/services/messages_service.dart';

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
    ],
    pipes: [
      NamePipe
    ])
class AppComponent {
  AppComponent(this.routes, this.msg, this._router) {
    menuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(link1),
        MenuItem(link2),
        MenuItem(about),
        MenuItem(language),
      ])
    ]);
  }

  String get link1 => Intl.message('link', name: 'link');
  String get link2 => Intl.message('link', name: 'link');
  String get link3 => Intl.message('link', name: 'link');
  String get language => Intl.message('språk', name: 'language');
  String get about => Intl.message('om', name: 'about');
  String get library => Intl.message('bibliotek', name: 'library');
  Router get router => _router;
  Window get htmlWindow => window;
  MenuModel menuModel;
  final Routes routes;
  final MessagesService msg;
  List<LearningContent> learningContents = [];
  List<Rise> riseContents = [];
  Router _router;
  String get essential_information =>
      Intl.message('essential information', name: 'essential_information');
  
}
