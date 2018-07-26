import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quick_action.dart';
import '../../services/quick_action_service.dart';
import '../quick_action_component/quick_action_component.dart';

@Component(
    directives: const [NgFor, QuickActionComponent, MaterialIconComponent],
    providers: const [QuickActionService],
    selector: 'p-quick-actions',
    styleUrls: const ['quick_actions_component.css'],
    templateUrl: 'quick_actions_component.html',
    pipes: [NamePipe])
class QuickActionsComponent implements OnInit{

  QuickActionsComponent(this.quickActionService);

  @override
  void ngOnInit() async
  {
    quickActions = await quickActionService.getAll();
  }

  @Input()
  String backgroundImage;
  final QuickActionService quickActionService;
  List<QuickAction> quickActions = [];
  
}
