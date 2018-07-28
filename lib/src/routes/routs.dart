import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import  'package:intl/intl.dart';
import '../components/quick_actions_component/quick_actions_component.template.dart' as qac;


@Injectable()
class Routes {
 

  final List<RouteDefinition> all = [
    RouteDefinition(
      path: quickActions.path,
      component: qac.QuickActionsComponentNgFactory,
    ),
  ];

  static final quickActions = RoutePath(path: Intl.message('quick_actions', name:'quick_actions'));
}