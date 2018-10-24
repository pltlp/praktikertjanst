import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quiz.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';

@Component(
    selector: 'q-rise',
    templateUrl: 'quiz_component.html',
    styleUrls: const ['quiz_component.css'],
    directives: const [NgIf, FoQuizComponent],
    providers: [],
    changeDetection: ChangeDetectionStrategy.OnPush)
class QuizComponent implements OnActivate {
  QuizComponent(this.quizService, this.changeDetectorRef, this.msg);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    final resourceUrl = current.parameters['url'];
    try {
      model = quizService.data.values.firstWhere((resource) =>
          resource.phrases[msg.currentLanguage].url == resourceUrl);
      changeDetectorRef.markForCheck();
    } on StateError {
      print('resourse not found');
    }
  }

  ChangeDetectorRef changeDetectorRef;
  QuizService quizService;
  MessagesService msg;

  Quiz model;
}
