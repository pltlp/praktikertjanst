import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';


import '../components/essential_information_component/essential_information_component.template.dart'
    as eic;
import '../components/home_component/home_component.template.dart' as hc;
import '../components/quick_actions_component/quick_actions_component.template.dart'
    as qac;
import '../components/rise_component/rise_component.template.dart' as rc;
import '../services/messages_service.dart';



@Injectable()
class Routes {
  final List<RouteDefinition> all;

  final RoutePath riseArticles;

  final RoutePath essentialInformation;
  final RoutePath home;
  final RoutePath quickActions;
  final RoutePath riseArticle;
  Routes(MessagesService msg)
      : essentialInformation = RoutePath(path: msg.essential_information_url),
        riseArticles = RoutePath(path: '${msg.articles_url}/rise'),
        quickActions = RoutePath(path: msg.quick_actions_url),
        home = RoutePath(path: msg.home_url),
        riseArticle = RoutePath(path: '${msg.articles_url}/rise/:id'),
        all = [
          RouteDefinition(
              path: msg.home_url,
              component: hc.HomeComponentNgFactory,
              useAsDefault: true),
          RouteDefinition(
              path: msg.quick_actions_url,
              component: qac.QuickActionsComponentNgFactory,
              useAsDefault: false),
          RouteDefinition(
              path: msg.essential_information_url,
              component: eic.EssentialInformationComponentNgFactory,
              useAsDefault: false),
          RouteDefinition(
              path: '${msg.articles_url}/rise',
              component: rc.RiseComponentNgFactory,
              useAsDefault: false),
          RouteDefinition(
              path: '${msg.articles_url}/rise/:id',
              component: rc.RiseComponentNgFactory,
              useAsDefault: false),
        ];
}
