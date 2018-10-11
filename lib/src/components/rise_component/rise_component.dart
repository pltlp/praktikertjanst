import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_router/angular_router.dart';
import '../../models/rise.dart';
import '../../services/messages_service.dart';
import '../../services/rise_service.dart';

@Component(
    selector: 'p-rise',
    templateUrl: 'rise_component.html',
    styleUrls: const ['rise_component.css'],
    directives: const [NgIf],
    providers: [MessagesService])
class RiseComponent implements OnInit, OnActivate {
  RiseComponent(this.sanitizer, this.riseService, this.msg);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    final resourceUrl = current.parameters['url'];
    
    try {
      model = riseService.data.values.firstWhere((resource) =>
          resource.phrases[msg.currentLanguage].url == resourceUrl);
    } on StateError {
      print('resourse not found');
    }

    url = sanitizer
        .bypassSecurityTrustResourceUrl(model.url[msg.currentLanguage]);
  }

  @override
  void ngOnInit() {
    if (model != null)
      url = sanitizer.bypassSecurityTrustResourceUrl(model.url[msg.currentLanguage]);
  }

  bool showModal = false;
  SafeResourceUrl url;
  final DomSanitizationService sanitizer;
  RiseService riseService;
  MessagesService msg;

  @Input('model')
  Rise model;
}
