import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import '../../routes/routes.dart';
import '../../services/learning_content_service.dart';
import '../../services/rise_service.dart';
import '../carousel_component/carousel_component.dart';
import '../footer_component/footer_component.dart';
import '../fullscreen_component/fullscreen_component.dart';
import '../learning_content_component/learning_content_component.dart';
import '../main_header_component/main_header_component.dart';
import '../make_difference_component/make_difference_component.dart';
import '../quick_action_component/quick_action_component.dart';
import '../quick_actions_component/quick_actions_component.dart';
import '../rise_component/rise_component.dart';

@Component(
    selector: 'p-home',
    templateUrl: 'home_component.html',
    styleUrls: const [
      'home_component.css'
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
      LearningContentService,
      RiseService,
    ],
    pipes: [
      NamePipe
    ])
class HomeComponent {
  HomeComponent(this.routes);

  final Routes routes;
}
