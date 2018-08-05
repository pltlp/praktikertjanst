import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_router/angular_router.dart';
import '../../models/rise.dart';
import '../../services/rise_service.dart';

@Component(
    selector: 'p-rise',
    templateUrl: 'rise_component.html',
    styleUrls: const ['rise_component.css'],
    directives: const [NgIf],
    providers: [RiseService])
class RiseComponent implements OnInit, OnActivate {
  RiseComponent(this.sanitizer, this.riseService);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    final id = current.path.split('/').last;
    model = await riseService.get(id);
    if (model != null)
      url = sanitizer.bypassSecurityTrustResourceUrl(model.url);
  }

  @override
  void ngOnInit() {
    if (model != null)
      url = sanitizer.bypassSecurityTrustResourceUrl(model.url);
  }

  bool showModal = false;
  SafeResourceUrl url;
  final DomSanitizationService sanitizer;
  RiseService riseService;

  @Input('model')
  Rise model;
}
