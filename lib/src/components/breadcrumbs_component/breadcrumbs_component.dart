import 'dart:html';
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
    routerState = state;
    final segments = routerState.path.split('/');

    crumbLinks = new List(segments.length);

    for (var i = 0; i < segments.length; i++) {
      final s = segments.take(i + 1);
      crumbLinks[i] = s.join('/');
    }
  }

  List<String> get path =>
      routerState == null ? [] : routerState.path.substring(1).split('/');

  List<String> evaluateBreadcrumbs(List<String> path) {
    var breadcrumbs = path;

    if (window.innerWidth < maxScreenWidth &&
        breadcrumbs.join('').length > nrOfCharacters) {
      breadcrumbs[(breadcrumbs.indexWhere((part) => part != '..'))] = '..';
      breadcrumbs = evaluateBreadcrumbs(breadcrumbs);
    }

    return breadcrumbs.map((c) => c.replaceAll('-', ' ')).toList();
  }

  final Router _router;
  final MessagesService msg;
  final int nrOfCharacters = 35;
  final int maxScreenWidth = 400;
  List<String> crumbLinks = [];
  RouterState routerState;
}
