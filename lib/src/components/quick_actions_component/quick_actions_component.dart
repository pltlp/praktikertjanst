import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import '../../services/messages_service.dart';
import '../../services/quick_action_service.dart';
import '../quick_action_component/quick_action_component.dart';

@Component(
    directives: const [NgFor, QuickActionComponent, MaterialIconComponent, RouterLink],
    providers: const [QuickActionService],
    selector: 'p-quick-actions',
    styleUrls: const ['quick_actions_component.css'],
    templateUrl: 'quick_actions_component.html',
    pipes: [NamePipe])
class QuickActionsComponent{

  QuickActionsComponent(this.quickActionService, this.msg);

  @Input()
  String backgroundImage;
  
  final QuickActionService quickActionService;
  final MessagesService msg;
  
}
