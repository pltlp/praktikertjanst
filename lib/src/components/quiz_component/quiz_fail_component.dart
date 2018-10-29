import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quiz.dart';
import '../../services/messages_service.dart';

@Component(
    selector: 'p-quiz-fail',
    templateUrl: 'quiz_fail_component.html',
    styleUrls: const ['quiz_fail_component.css'],
    pipes: const [NamePipe],
    directives: const [MaterialIconComponent])
class QuizFailComponent {
  QuizFailComponent(this.msg);

  @Input()
  Quiz model;

  final MessagesService msg;
}
