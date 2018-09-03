import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../../services/quick_action_service.dart';
import '../carousel_component/carousel_component.dart';
import '../essential_information_component/essential_information_component.dart';
import '../fullscreen_component/fullscreen_component.dart';
import '../main_header_component/main_header_component.dart';
import '../make_difference_component/make_difference_component.dart';
import '../quick_action_component/quick_action_component.dart';
import '../quick_actions_component/quick_actions_component.dart';
import '../../models/quick_action.dart';

@Component(
    selector: 'p-home',
    templateUrl: 'home_component.html',
    styleUrls: const [
      'home_component.css'
    ],
    directives: [
      EssentialInformationComponent,
      FullscreenComponent,
      CarouselComponent,
      MainHeaderComponent,
      MakeDifferenceComponent,
      QuickActionsComponent,
      NgFor,
      NgIf,
      FoYouTubePlayerComponent,
      QuickActionComponent
    ],
    providers: [
      QuickActionService
    ],
    pipes: [
      NamePipe
    ])
class HomeComponent implements OnInit {
  HomeComponent(this.quickActionService);

  @override
  void ngOnInit() async {
    quickActions = await quickActionService.getFrontPageQuickActions();
  }

  QuickActionService quickActionService;
  List<QuickAction> quickActions;
}
