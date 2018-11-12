import 'dart:html' as html;
import 'package:angular_router/angular_router.dart';
import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/resource.dart';
import '../../models/video.dart';
import '../../services/course_room_service.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';
import '../../services/video_service.dart';
import '../button_component/button_component.dart';
import '../carousel_component/carousel_component.dart';
import '../course_room_buttons_component/course_room_buttons_component.dart';
import '../course_room_component/course_room_component.dart';
import '../fullscreen_component/fullscreen_component.dart';
import '../main_header_component/main_header_component.dart';
import '../make_difference_component/make_difference_component.dart';
import '../resource_component/resource_component.dart';

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
      NgFor,
      NgIf,
      ResourceComponent,
      CourseRoomComponent,
      routerDirectives,
      ButtonComponent,
      CourseRoomButtonsComponent
    ],
    providers: [],
    pipes: [
      NamePipe
    ])
class HomeComponent {
  HomeComponent(this.router, this.msg, this.videoService, this.riseService,
      this.courseRoomService, this.quizService) {
    videos = [
      videoService.data['Så upplevde vi saneringen'],
      videoService.data['Så minimerar vi utsläppen'],
      videoService.data['Så går en installation till'],
      videoService.data['Att lämna amalgam bakom sig']
    ];

    resources = [
      riseService.data['Kvicksilver i naturen'],
      riseService.data['Lagar och regler'],
      riseService.data['Vad är vad på mottagningen?'],
    ];
  }
  void scrollTo(String comp) {
    switch (comp) {
      case 'carousel':
        html.window.scrollTo(0, carousel.offsetTop);
        break;

      default:
        break;
    }
  }

  String background(String url) => "url('$url')";

  List<Resource> resources;
  Router router;
  MessagesService msg;
  List<Video> videos;
  VideoService videoService;
  CourseRoomService courseRoomService;
  RiseService riseService;
  QuizService quizService;

  @ViewChild('carousel')
  html.Element carousel;
}
