import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:fo_components/fo_components.dart';
import '../../directives/show_element.dart';

@Component(
    directives: const [ShowElementDirective, NgIf],
    providers: const [MaterialIconComponent],
    selector: 'p-make-a-differance',
    styleUrls: const ['make_a_difference_component.css'],
    templateUrl: 'make_a_difference_component.html',
    pipes: [NamePipe])
class MakeaADifferenceComponent {
  @Input()
  String backgroundImage;

  String get you_can_make_a_differance =>
      Intl.message('you really can make a difference!',
          name: 'you_can_make_a_differance');

  String get find_out_what_is_allowed => Intl.message(
      "Find out what you didn't know you could do! Answer these five simple questions and find the information relevant to you.",
      name: 'find_out_what_is_allowed');
  String get learn_more => Intl.message('learn more!', name: 'learn_more');
  String get what_do_you_already_know =>
      Intl.message('what do you already know?',
          name: 'what_do_you_already know'); 

  void setOpacity() {
    opacity = '0.5';
  }

  void setOpacityZero() {
    opacity = '0';
  }

  String opacity = '0';
}
