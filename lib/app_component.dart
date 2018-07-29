import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
import 'src/components/carousel_component/carousel_component.dart';
import 'src/components/footer_component/footer_component.dart';
import 'src/components/fullscreen_component/fullscreen_component.dart';
import 'src/components/learning_content_component/learning_content_component.dart';
import 'src/components/main_header_component/main_header_component.dart';
import 'src/components/make_difference_component/make_difference_component.dart';
import 'src/components/quick_action_component/quick_action_component.dart';
import 'src/components/quick_actions_component/quick_actions_component.dart';
import 'src/components/rise_component/rise_component.dart';
import 'src/models/learning_content.dart';
import 'src/models/rise.dart';
import 'src/routes/routes.dart';
import 'src/services/learning_content_service.dart';
import 'src/services/rise_service.dart';

@Component(
    selector: 'p-app',
    templateUrl: 'app_component.html',
    styleUrls: const [
      'app_component.css'
    ],
    directives: [
      NavbarComponent,
      FooterComponent,
      FullscreenComponent,
      MaterialMenuComponent,
      MaterialIconComponent,
      CarouselComponent,
      LearningContentComponent,
      MainHeaderComponent,
      MakeDifferenceComponent,
      QuickActionComponent,
      QuickActionsComponent,
      RiseComponent,
      routerDirectives,
      NgFor,
      NgIf
    ],
    providers: [
      materialProviders,
      LearningContentService,
      RiseService,
      routerProvidersHash,
      Routes,
    ],
    pipes: [
      NamePipe
    ])
class AppComponent {
  AppComponent(this.routes) {
    menuModel = MenuModel<MenuItem>([
      MenuItemGroup<MenuItem>([
        MenuItem(link1),
        MenuItem(link2),
        MenuItem(link3),
        MenuItem(link4),
      ])
    ]);
  }

  MenuModel menuModel;

  final Routes routes;
  List<LearningContent> learningContents = [];
  List<Rise> riseContents = [];
  String get link1 => Intl.message('link', name: 'link');
  String get link2 => Intl.message('link', name: 'link');
  String get link3 => Intl.message('link', name: 'link');
  String get link4 => Intl.message('link', name: 'link');

  String get essential_information =>
      Intl.message('essential information', name: 'essential_information');
}
