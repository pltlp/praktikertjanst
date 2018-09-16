import 'package:angular_router/angular_router.dart';
import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quick_action.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';
import '../../services/quick_action_service.dart';
import '../../services/video_service.dart';
import '../carousel_component/carousel_component.dart';
import '../course_room_for_curious_component/course_room_for_curious_component.dart';
import '../fullscreen_component/fullscreen_component.dart';
import '../main_header_component/main_header_component.dart';
import '../make_difference_component/make_difference_component.dart';
import '../quick_action_component/quick_action_component.dart';
import '../quick_actions_component/quick_actions_component.dart';

@Component(
    selector: 'p-home',
    templateUrl: 'home_component.html',
    styleUrls: const [
      'home_component.css'
    ],
    directives: [
      FullscreenComponent,
      CarouselComponent,
      MainHeaderComponent,
      MakeDifferenceComponent,
      QuickActionsComponent,
      NgFor,
      NgIf,
      FoYouTubePlayerComponent,
      QuickActionComponent,
      CourseRoomForCuriousComponent,
      routerDirectives
    ],
    providers: [
    ],
    pipes: [
      NamePipe
    ])
class HomeComponent {
  HomeComponent(
      this.quickActionService, this.router, this.msg, this.videoService) {
    videos = [
      videoService.data['Goda exempel - sanering'],
      videoService.data['Goda exempel - skötsel'],
      videoService.data['Goda exempel - installation'],
    ];

    quickActions = [
      quickActionService.data['För dig på tandläkarmottagning'],
      quickActionService.data['För dig som är dentaltekniker'],
      quickActionService.data['Lagar och regler'],
      quickActionService.data['För dig som är servicetekniker'],
      quickActionService.data['För dig som bara är nyfiken'],
      quickActionService.data['Quiz vad har du lärt dig?'],

    ];
  }

  QuickActionService quickActionService;
  List<QuickAction> quickActions;
  Router router;
  MessagesService msg;
  List<Video> videos;
  VideoService videoService;
}
