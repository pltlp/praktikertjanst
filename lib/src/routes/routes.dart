import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../components/course_room_for_curious_component/course_room_for_curious_component.template.dart'
    as crfcc;
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
            component: crfcc.CourseRoomForCuriousComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.course_room_for_curious_url}/${msg.documents_component_url}',
            component: dc.DocumentsComponentNgFactory,
          ),
          RouteDefinition(
            path:
                '${msg.home_url}/${msg.library_url}/${msg.course_room_for_curious_url}',
            component: crfcc.CourseRoomForCuriousComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/:id',
            component: rc.RiseComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/${msg.library_url}/:id',
            component: rc.RiseComponentNgFactory,
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
