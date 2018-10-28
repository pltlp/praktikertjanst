import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quiz.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';

@Component(
    selector: 'p-quiz',
    templateUrl: 'quiz_component.html',
    styleUrls: const ['quiz_component.css'],
    directives: const [
      NgIf,
      MaterialStepperComponent,
      StepDirective,
      NgFor,
      FoQuizComponent,
      MaterialRadioComponent,
      MaterialRadioGroupComponent,
      formDirectives
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

  ChangeDetectorRef changeDetectorRef;
  QuizService quizService;
  MessagesService msg;
  Quiz model;
}
