import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:intl/intl.dart';
import '../components/essential_information_component/essential_information_component.template.dart'
    as eic;
import '../components/home_component/home_component.template.dart' as hc;
import '../components/quick_actions_component/quick_actions_component.template.dart'
    as qac;
import '../components/rise_article_component_important_concepts/rise_article_component_important_concepts.template.dart'
    as raic;
import '../components/rise_article_component_mercury_in_nature/rise_article_component_mercury_in_nature.template.dart'
    as rac;

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
        path: riseArticleMurceryInNature.path,
        component: rac.RiseArticleComponentMercuryInNatureNgFactory,
        useAsDefault: false),
    RouteDefinition(
        path: riseArticleImportantConcepts.path,
        component: raic.RiseArticleComponentImportantConceptsNgFactory, 
        useAsDefault: false),
  ];

  static final RoutePath riseArticleMurceryInNature = RoutePath(
      path: Intl.message('mercury_in_nature', name: 'mercury_in_nature'));
  static final RoutePath riseArticleImportantConcepts = RoutePath(
      path: Intl.message('important_concepts', name: 'important_concepts'));
  static final RoutePath quickActions =
      RoutePath(path: Intl.message('quick_actions', name: 'quick_actions'));
  static final RoutePath home =
      RoutePath(path: Intl.message('home', name: 'home'));
  static final RoutePath essentialInformation = RoutePath(
      path:
          Intl.message('essential_information', name: 'essential_information'));
} 
