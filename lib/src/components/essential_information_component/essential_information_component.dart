import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quick_action.dart';
import '../../services/quick_action_service.dart';
import '../quick_action_component/quick_action_component.dart';

@Component(
    directives: const [NgFor, QuickActionComponent, MaterialIconComponent],
    providers: const [QuickActionService],
    selector: 'p-essential-information',
    styleUrls: const ['essential_information_component.css'],
    templateUrl: 'essential_information_component.html',
    pipes: [NamePipe])
class EssentialInformationComponent implements OnInit{

  EssentialInformationComponent(this.quickActionService);

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
