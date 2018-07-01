import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular/security.dart';
import '../../models/quick_action.dart';

@Component(
  selector: 'd-action',
  templateUrl: 'quick_action_component.html',
  styleUrls: const ['quick_action_component.css'],
  directives: const [MaterialButtonComponent, MaterialIconComponent, FoModalComponent],
  pipes: [NamePipe])
class QuickActionComponent{
  
  QuickActionComponent(this.sanitizer);
    
  bool showModal = false;
  final DomSanitizationService sanitizer;

  @Input('model') 
  QuickAction model; 
  
}