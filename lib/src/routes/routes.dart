import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
import '../components/essential_information_component/essential_information_component.template.dart' as eic;
import '../components/home_component/home_component.template.dart' as hc;
import '../components/quick_actions_component/quick_actions_component.template.dart'
    as qac;

@Injectable()
class Routes {
  final List<RouteDefinition> all = [
    RouteDefinition(
        path: home.path,
        component: hc.HomeComponentNgFactory,
        useAsDefault: true),
    RouteDefinition(
        path: quickActions.path,
        component: qac.QuickActionsComponentNgFactory,
        useAsDefault: false),
    RouteDefinition(
        path: essentialInformation.path,
        component: eic.EssentialInformationComponentNgFactory,
        useAsDefault: false),
  ];

  static final RoutePath quickActions =
      RoutePath(path: Intl.message('quick_actions', name: 'quick_actions'));
  static final RoutePath home =
      RoutePath(path: Intl.message('home', name: 'home'));
  static final RoutePath essentialInformation =
      RoutePath(path: Intl.message('essential_information', name: 'essential_information'));
}
