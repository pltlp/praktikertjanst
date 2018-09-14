import 'dart:html';
import 'package:angular/angular.dart';
import 'package:intl/intl.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/model.dart';
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
    styleUrls: const ['course_room_for_curious_component.css'],
    templateUrl: 'course_room_for_curious_component.html',
    pipes: [NamePipe])
class CourseRoomForCuriousComponent {
  CourseRoomForCuriousComponent(this.router, this.msg, this.videoService) {
    models = ([
      videoService.data['Installation av amalgam avskiljare']
    ]);
    print(models);
  }

  @Input()
  String backgroundImage;

  String get course_room_title =>
      Intl.message('Kursrum för dig som bara är nyfiken',
          name: 'course_for_the_curious');

  String get archive => Intl.message('Arkiv', name: 'archive');

  String get course_room_description => Intl.message(
      'Här kan du gå en kurs som kort beskriver alla våra verksamhetsområden...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      name: 'course_room_description');

  void scrollTop() {
    window.scrollTo(0, 0);
  }

  Router router;
  MessagesService msg;
  VideoService videoService;
  List<Model> models;
}
