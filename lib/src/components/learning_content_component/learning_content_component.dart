import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular/security.dart';
import '../../models/learning_content.dart';

@Component(
    selector: 'd-learning-content',
    templateUrl: 'learning_content_component.html',
    styleUrls: const [
      'learning_content_component.css'
    ],
    directives: const [
      MaterialButtonComponent,
      MaterialIconComponent,
      FoModalComponent
    ],
    pipes: [
      NamePipe
    ])
class LearningContentComponent implements OnInit {
  LearningContentComponent(this.sanitizer);

  @override
  void ngOnInit() {
    url = sanitizer.bypassSecurityTrustUrl(model.url);
  }

  String get learnMore => Intl.message('Learn more', name: 'learn_more');

  bool showModal = false;
  final DomSanitizationService sanitizer;
  SafeUrl url;

  @Input('model')
  LearningContent model;
}
