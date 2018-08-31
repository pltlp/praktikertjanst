import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../services/messages_service.dart';

@Component(
    directives: const [routerDirectives, NgFor, NgIf],
    providers: const [],
    pipes: [NamePipe],
    selector: 'p-breadcrumbs',
    styleUrls: const ['breadcrumbs_component.css'],
    templateUrl: 'breadcrumbs_component.html')
class BreadcrumbsComponent {
  BreadcrumbsComponent(this._router, this.msg) {
    _router.onRouteActivated.listen(_onNavigationStart);
  }

  void _onNavigationStart(RouterState state) {
    routePaths.clear();
    routeLabels.clear();

    if (state.path != null) {
      routeLabels = state.path.split('/');

      for (var i = 0; i < routeLabels.length; i++) {
        final inner = <String>[];

        for (var j = 0; j <= i; j++) {
          inner.add(routeLabels[j]);
        }
        routePaths.add(inner.join('/'));
      }
    }
  }

  final Router _router;
  final MessagesService msg;
  final List<String> routePaths = [];
  List<String> routeLabels = [];
}
