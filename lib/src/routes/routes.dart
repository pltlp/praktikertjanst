import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../components/about_component/about_component.template.dart' as ac;
import '../components/course_room_component/course_room_component.template.dart'
    as crc;
import '../components/documents_component/documents_component.template.dart'
    as dc;
import '../components/home_component/home_component.template.dart' as hc;
import '../components/library_component/library_component.template.dart' as lc;
import '../components/rise_component/rise_component.template.dart' as rc;

import '../services/messages_service.dart';

@Injectable()
class Routes {
  final List<RouteDefinition> all;

  Routes(MessagesService msg)
      : all = [
          RouteDefinition(
              path: msg.home_url, component: hc.HomeComponentNgFactory),
          RouteDefinition(
            path: '${msg.home_url}/${msg.library_url}',
            component: lc.LibraryComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/${msg.course_room_for_curious_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_curious_url}/${msg.documents_component_url}',
            component: dc.DocumentsComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.library_url}/${msg.course_room_for_curious_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),                     
          RouteDefinition(
            path: '${msg.home_url}/${msg.course_room_for_curious_url}/:id',
            component: rc.RiseComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/${msg.course_room_for_dental_teams_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_dental_teams_url}/${msg.documents_component_url}',
            component: dc.DocumentsComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.library_url}/${msg.course_room_for_dental_teams_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/${msg.course_room_for_dental_teams_url}/:id',
            component: rc.RiseComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_dental_technicians_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),          
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_dental_technicians_url}/${msg.documents_component_url}',
            component: dc.DocumentsComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.library_url}/${msg.course_room_for_dental_technicians_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_dental_technicians_url}/:id',
            component: rc.RiseComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_service_technicians_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),          
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_service_technicians_url}/${msg.documents_component_url}',
            component: dc.DocumentsComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.library_url}/${msg.course_room_for_service_technicians_url}',
            component: crc.CourseRoomComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_service_technicians_url}/:id',
            component: rc.RiseComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/${msg.library_url}/:id',
            component: rc.RiseComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/${msg.about}',
            component: ac.AboutComponentNgFactory,
          ),
          RouteDefinition.redirect(
            path: '.+',
            redirectTo: msg.home_url,
          ),
          RouteDefinition.redirect(
            path: '',
            redirectTo: msg.home_url,
          )
        ];
}
