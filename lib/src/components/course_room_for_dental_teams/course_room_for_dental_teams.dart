import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';
import '../../services/video_service.dart';
import '../button_component/button_component.dart';
import '../carousel_component/carousel_component.dart';

@Component(
    directives: const [
      NgIf,
      routerDirectives,
      ButtonComponent,
      CarouselComponent,
    ],
    providers: const [MessagesService],
    selector: 'p-course-room-for-curious',
    styleUrls: const ['course_room_for_dental_teams.css'],
    templateUrl: 'course_room_for_dental_teams.html',
    pipes: [NamePipe])
class CourseRoomForDentalTeamsComponent {
  CourseRoomForDentalTeamsComponent(this.router, this.msg, this.videoService) {
    models = ([
      videoService.data['Rutiner vid patientbehandling'],
      videoService.data['Skötsel av amalgamavskiljare under en vecka'],
      videoService.data['Skötsel av amalgamavskiljare mer sällan']
    ]);
  }


  void scrollTop() {
    window.scrollTo(0, 0);
  }

  Router router;
  MessagesService msg;
  VideoService videoService;
  List<Video> models;
}
