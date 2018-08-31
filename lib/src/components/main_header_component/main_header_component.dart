import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:fo_components/fo_components.dart';

@Component(
    directives: const [MaterialIconComponent, MaterialButtonComponent],
    providers: const [materialProviders],
    selector: 'p-main-header',
    styleUrls: const ['main_header_component.css'],
    templateUrl: 'main_header_component.html',
    pipes: [NamePipe])
class MainHeaderComponent {
   String get main_header => Intl.message('en liten insats kan göra stor skillnad!',
        name: 'small_efforts_make_a_huge_difference');
   String get learn_more => Intl.message('lär dig mer!',
        name: 'learn_more');
}
