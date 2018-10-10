import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/course_room.dart';
import '../../models/document.dart';
import '../../models/resource.dart';
import '../../models/video.dart';
import '../../services/course_room_service.dart';
import '../../services/document_service.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../../services/video_service.dart';
import '../button_component/button_component.dart';
import '../carousel_component/carousel_component.dart';
import '../word_list_component/word_list_component.dart';

@Component(
    directives: const [
      ButtonComponent,
      CarouselComponent,
      MaterialStepperComponent,
      NgIf,
      NgFor,
      routerDirectives,
      StepDirective,
      MaterialTooltipDirective,
      FoModalComponent,
      WordListComponent
    ],
    providers: const [scrollHostProviders],
    selector: 'p-course-room-for-curious',
    styleUrls: const ['course_room_component.css'],
    templateUrl: 'course_room_component.html',
    pipes: [NamePipe])
class CourseRoomComponent implements OnActivate {
  CourseRoomComponent(this.router, this.msg, this.videoService,
      this.courseRoomService, this.documentService,this.quizService);

  @override
  void onActivate(RouterState previous, RouterState current) {
    url = current.parameters['url'];

    final qa = courseRoomService.data.keys.firstWhere((q)=> courseRoomService.data[q].phrases[msg.currentLanguage].url == url);
   
    model =  courseRoomService.data[qa];


    if (model != null) {
      videos = model.video_ids
          .map((v) => videoService.data[v])
          .toList(growable: true);
  
      resources = model.resources_ids
          .map((id) => courseRoomService.data[id])
          .toList(growable: false);
   

      documents = model.document_ids
          .map((id) => documentService.data[id])
          .toList(growable: false);
    }
  }

  final Router router;
  final MessagesService msg;
  final VideoService videoService;
  final QuizService quizService;
  List<Video> videos;
  List<Resource> resources;
  List<Document> documents;
  CourseRoom model;
  final CourseRoomService courseRoomService;
  final DocumentService documentService;
  String url;
  bool wordListModalVisible = false;
}
