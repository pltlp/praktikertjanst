import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../components/course_room_for_curious_component/course_room_for_curious_component.template.dart'
    as crfcc;
import '../components/home_component/home_component.template.dart' as hc;
import '../components/library_component/library_component.template.dart' as lc;
import '../components/rise_component/rise_component.template.dart' as rc;
import '../services/messages_service.dart';

@Injectable()
class Routes {
  final List<RouteDefinition> all;
  final RoutePath home;
  final RoutePath quickActions;
  final RoutePath riseArticle;
  final RoutePath library;
  final RoutePath courseRoomForCurious;
  Routes(MessagesService msg)
      : quickActions = RoutePath(path: msg.quick_actions_url),
        home = RoutePath(path: msg.home_url),
        riseArticle = RoutePath(path: '${msg.home_url}/:id'),
        library = RoutePath(path: msg.library_url),
        courseRoomForCurious = RoutePath(path: msg.course_room_for_curious_url),
        all = [
          RouteDefinition(
              path: msg.home_url,
              component: hc.HomeComponentNgFactory,
              useAsDefault: true),
          RouteDefinition(
            path: '${msg.home_url}/${msg.library_url}',
            component: lc.LibraryComponentNgFactory,
          ),
          RouteDefinition(
            path: '${msg.home_url}/${msg.course_room_for_curious_url}',
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
          RouteDefinition(
            path: '.+',
            component: hc.HomeComponentNgFactory,
          ),
        ];
}
