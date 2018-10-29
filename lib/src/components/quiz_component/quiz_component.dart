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
import 'quiz_complete_component.dart';
import 'quiz_fail_component.dart';

@Component(
    selector: 'p-quiz',
    templateUrl: 'quiz_component.html',
    styleUrls: const ['quiz_component.css'],
    directives: const [
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
    providers: [scrollHostProviders],
    changeDetection: ChangeDetectionStrategy.Default)
class QuizComponent implements OnActivate {
  QuizComponent(this.quizService, this.changeDetectorRef, this.msg);

  @override
  void onActivate(RouterState previous, RouterState current) {
    final resourceUrl = current.parameters['url'];

    try {
      model = quizService.data.values.firstWhere((resource) =>
          resource.phrases[msg.currentLanguage].url == resourceUrl);
    } on StateError {
      print('resource not found');
    }
  }

  void onContinue(AsyncAction<bool> event, int i) {
    if (i == model.questions.length - 1) {
      completed = true;
    }
  }

  int get maxScore {
    var s = 0;

    for (final q in model.questions) {
      final sorted = q.options.toList()..sort((o1, o2) => o2.score - o1.score);
      s += sorted.first.score;
    }
    return s;
  }

  int get currentScore {
    var s = 0;

    for (final q in model.questions) {
      try {
        s += q.options.firstWhere((o) => o.value == q.selectedValue).score;
      } on StateError {}
    }
    return s;
  }

  bool get success => currentScore.toDouble() / maxScore >= model.minScore; 

  ChangeDetectorRef changeDetectorRef;
  QuizService quizService;
  MessagesService msg;
  Quiz model;
  bool completed = false;
}
