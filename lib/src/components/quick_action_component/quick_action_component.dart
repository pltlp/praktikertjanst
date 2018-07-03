import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular/security.dart';
import '../../models/quick_action.dart';

@Component(
  selector: 'd-quick-action',
  templateUrl: 'quick_action_component.html',
  styleUrls: const ['quick_action_component.css'],
  directives: const [MaterialButtonComponent, MaterialIconComponent, FoModalComponent],
  pipes: [NamePipe])
class QuickActionComponent implements OnInit{
  
  QuickActionComponent(this.sanitizer);

  void ngOnInit()
  {
    url = sanitizer.bypassSecurityTrustResourceUrl(model.url);
  }
    
  bool showModal = false;
  SafeResourceUrl url;
  final DomSanitizationService sanitizer;

  @Input('model') 
  QuickAction model; 
  
}