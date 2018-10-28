import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_radio/material_radio.dart';
import 'package:angular_components/material_stepper/material_step.dart';
import 'package:angular_components/material_stepper/material_stepper.dart';
import 'package:angular_components/model/action/async_action.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
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
      SummaryDirective,
      MaterialButtonComponent,
      NgFor,
      FoQuizComponent,
      MaterialRadioComponent
    ],
    providers: [scrollHostProviders],
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
      print(model.questions[0].label);
    } on StateError {
      print('resourse not found');
    }
  }
  int get optionNo => _optionNo;

  void onButtonChange(int opt, bool flag) {
    if (flag) {
      _optionNo = opt;
      changeDetectorRef.markForCheck();
  
    }
  }

  ChangeDetectorRef changeDetectorRef;
  QuizService quizService;
  MessagesService msg;
  int _optionNo;

  Quiz model;
}
class StepperDemoComponent {
  bool showButton = false;

  void toggleContinue() {
    showButton = !showButton;
  }

  void validDelayedCheck(AsyncAction<bool> action) {
    action.cancelIf(Future.delayed(const Duration(seconds: 1), () {
      // Don't cancel
      return false;
    }));
  }

  
  
}