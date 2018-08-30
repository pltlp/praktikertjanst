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
    templateUrl: 'bradcrumbs_component.html')
class BreadcrumbsComponent implements OnInit {
  BreadcrumbsComponent(this._router, this.msg);

  @override
  void ngOnInit() async {
    _routeArray.add(msg.home_url);
    _router.onRouteActivated.listen((newState) {
      print('Navigating from ${_router.current} to $newState');
    });
  }

  List<String> get routeArray =>
      (_router.current != null && _router.current.path != null)
          ? _routeArray = _router.current.path.split('/')
          : null;

  List<String> _routeArray = [];
  final Router _router;
  final MessagesService msg;
}
