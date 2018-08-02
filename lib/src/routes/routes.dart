import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
import '../components/essential_information_component/essential_information_component.template.dart'
    as eic;
import '../components/home_component/home_component.template.dart' as hc;
import '../components/quick_actions_component/quick_actions_component.template.dart'
    as qac;
import '../components/rise_articles_component/rise_articles_component.template.dart'
    as rac;
import '../components/rise_component/rise_component.template.dart' as rc;

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
    RouteDefinition(
        path: riseArticle.path,
        component: rc.RiseComponentNgFactory,
        useAsDefault: false),
    RouteDefinition(
        path: riseArticles.path,
        component: rac.RiseArticlesComponentNgFactory,
        useAsDefault: false)
  ];

  static final RoutePath riseArticles =
      RoutePath(path: Intl.message('rise_articles', name: 'rise_articles'));
  static const String idParam = 'id';
  static final RoutePath riseArticle =
      RoutePath(path: '${riseArticles.path}/:$idParam');
  static final RoutePath quickActions =
      RoutePath(path: Intl.message('quick_actions', name: 'quick_actions'));
  static final RoutePath home =
      RoutePath(path: Intl.message('home', name: 'home'));
  static final RoutePath essentialInformation = RoutePath(
      path:
          Intl.message('essential_information', name: 'essential_information'));
}
