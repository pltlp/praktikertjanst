import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:fo_components/fo_components.dart' show FoValidators, NamePipe;
import '../../components/button_component/button_component.dart';
import '../../models/mail.dart';
import '../../models/quiz.dart';
import '../../services/mail_service.dart';
import '../../services/messages_service.dart';


@Component(
    selector: 'p-quiz-complete',
    templateUrl: 'quiz_complete_component.html',
    styleUrls: const [
      'quiz_complete_component.css'
    ],
    directives: const [
      ButtonComponent,
      formDirectives,
      MaterialCheckboxComponent,
      MaterialIconComponent,
      NgIf
    ],
    providers: const[MailService],
    pipes: const [
      NamePipe
    ])
class QuizCompleteComponent {
  QuizCompleteComponent(this.mailService, this.msg);

  final MessagesService msg;

  Future<void> onSignupNewsLetter() async {
    if (form.valid && termsAccepted) {

     await mailService.send(new Mail()
     ..subject = 'New quiz completed'
     ..message = 'Email: $email'
     ..sender = 'dmarlovic83@gmail.com'
     ..receiver = 'dmarlovic83@gmail.com'
     );
     emailSent = true; 
    }
  }

  String email;
  bool termsAccepted = false;
  bool emailSent = false;
  final MailService mailService;

  @Input()
  Quiz model;

  final ControlGroup form = new ControlGroup({
    'email': new Control(
        '', Validators.compose([Validators.required, FoValidators.email]))
  });
}
