import 'dart:math';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/model/action/async_action.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quiz.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../button_component/button_component.dart';
import 'quiz_complete_component.dart';
import 'quiz_fail_component.dart';

@Component(
    selector: 'p-quiz',
    templateUrl: 'quiz_component.html',
    styleUrls: const ['quiz_component.css'],
    directives: const [
      ButtonComponent,
      NgIf,
      MaterialStepperComponent,
      StepDirective,
      NgFor,
      MaterialRadioComponent,
      MaterialRadioGroupComponent,
      formDirectives,
      QuizCompleteComponent,
      QuizFailComponent
    ],
    providers: [scrollHostProviders, Location],
    pipes: const [NamePipe],
    changeDetection: ChangeDetectionStrategy.Default)
class QuizComponent implements OnInit {
  QuizComponent(
      this.quizService, this.changeDetectorRef, this.location, this.msg);

  @override
  void ngOnInit() {
    try {
      for (var question in model.questions) {
        shuffle(question.options);
      }
    } on StateError {
      print('resource not found');
    }
  }

  void onContinue(AsyncAction<bool> event, int i) {
    if (i == model.questions.length - 1) {
      completed = true;
    }
  }

  List shuffle(List items) {
    final random = new Random();

    // Go through all elements.
    for (var i = items.length - 1; i > 0; i--) {
      // Pick a pseudorandom number according to the list length
      final n = random.nextInt(i + 1);

      final temp = items[i];
      items[i] = items[n];
      items[n] = temp;
    }

    return items;
  }

    void init() {
    try {
      model = new Quiz.from(model);
      completed = false;

      for (var question in model.questions) {
        shuffle(question.options);
      }
    } on StateError {
      print('resource not found');
    }
  }

  @Input('model')
  Quiz model;
  bool get success =>
      model.currentScore.toDouble() / model.maxScore >= model.minScore;

  String resourceUrl;
  final ChangeDetectorRef changeDetectorRef;
  final QuizService quizService;
  final Location location;
  final MessagesService msg;

  bool completed = false;
}
