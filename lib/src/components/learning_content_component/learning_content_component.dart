import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import '../../models/learning_content.dart';

@Component(
  selector: 'd-learning-content',
  templateUrl: 'learning_content_component.html',
  styleUrls: const ['learning_content_component.css'],
  directives: const [MaterialButtonComponent, MaterialIconComponent])
class LearningContentComponent{
  
  @Input('model')
  LearningContent model;
  
}