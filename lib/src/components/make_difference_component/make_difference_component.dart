import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import  'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../services/messages_service.dart';
import '../button_component/button_component.dart';

@Component(
    directives: const [NgIf, FoModalComponent, routerDirectives, ButtonComponent],
    providers: const [MaterialIconComponent],
    selector: 'p-make-difference',
    styleUrls: const ['make_difference_component.css'],
    templateUrl: 'make_difference_component.html',
    pipes: [NamePipe])
class MakeDifferenceComponent {
  MakeDifferenceComponent(this.router, this.msg);

  @Input()
  String backgroundImage;

  String get mercury_in_nature =>
      Intl.message('Kvicksilver i naturen!', name: 'mercury_in_nature');

  String get mercury_in_nature_button_tooltip => Intl.message(
      'Vad är de långvariga effekterna av kvicksilver i nautren? Ta reda på det här!',
      name: 'mercury_in_nature_tooltip');

  String get library_button_tooltip => Intl.message(
      'Här finns alla våra kursmoment samlade på ett och samma ställe!',
      name: 'library_button_tooltip');

  String get library => Intl.message('Bibliotek', name: 'library');

  void scrollTop()
  {
    window.scrollTo(0,0);
  }


  bool showModal = false;
  Router router;
  MessagesService msg;
}
