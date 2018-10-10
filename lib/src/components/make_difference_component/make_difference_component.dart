import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/resource.dart';
import '../../services/messages_service.dart';
import '../button_component/button_component.dart';

@Component(
    directives: const [
      NgIf,
      FoModalComponent,
      routerDirectives,
      ButtonComponent,
      MaterialTooltipDirective,
      MaterialIconComponent
    ],
    providers: const [],
    selector: 'p-make-difference',
    styleUrls: const ['make_difference_component.css'],
    templateUrl: 'make_difference_component.html',
    pipes: [NamePipe])
class MakeDifferenceComponent {
  MakeDifferenceComponent(this.router, this.msg);

  @Input()
  String backgroundImage;
  @Input()
  Resource model;

  bool showModal = false;
  Router router;
  MessagesService msg;
}
