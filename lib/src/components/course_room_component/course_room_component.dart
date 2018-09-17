import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/course_room.dart';
import '../../models/document.dart';
import '../../models/quick_action.dart';
import '../../models/video.dart';
import '../../services/course_room_service.dart';
import '../../services/document_service.dart';
import '../../services/messages_service.dart';
import '../../services/quick_action_service.dart';
import '../../services/video_service.dart';
import '../button_component/button_component.dart';
import '../carousel_component/carousel_component.dart';

@Component(
    directives: const [
      ButtonComponent,
      CarouselComponent,
      MaterialStepperComponent,
      NgIf,
      NgFor,
      routerDirectives,
      StepDirective
    ],
    providers: const [scrollHostProviders],
    selector: 'p-course-room-for-curious',
    styleUrls: const ['course_room_component.css'],
    templateUrl: 'course_room_component.html',
    pipes: [NamePipe])
class CourseRoomComponent implements OnActivate {
  CourseRoomComponent(this.router, this.msg, this.videoService,
      this.courseRoomService, this.quickActionService, this.documentService);

  @override
  void onActivate(RouterState previous, RouterState current) {
    url = current.path.split('/').last;
    model = courseRoomService.data[url];
    
    

    if (model != null) {

      videos = model.videosIds
          .map((v) => videoService.data[v])
          .toList(growable: true);
      quickActions = model.quickActionIds
          .map((id) => quickActionService.data[id])
          .toList(growable: false);

      documents = model.documentIds
          .map((id) => documentService.data[id])
          .toList(growable: false);

    }
  }

  final Router router;
  final MessagesService msg;
  final VideoService videoService;
  List<Video> videos;
  List<QuickAction> quickActions;
  List<Document> documents;
  CourseRoom model;
  final CourseRoomService courseRoomService;
  final QuickActionService quickActionService;
  final DocumentService documentService;
  String url;
}
