import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:fo_components/fo_components.dart';
import '../carousel_component/carousel_component.dart';

@Component(
    directives: const [materialDirectives,CarouselComponent],
    providers: const [materialProviders],
    selector: 'p-good-examples',
    styleUrls: const ['good_examples_component.css'],
    templateUrl: 'good_examples_component.html',
    pipes: [NamePipe])
class GoodExamplesComponent implements OnInit {
  void ngOnInit() {
    good_exampels = Intl.message('good exampels',
        name: 'good_exampels');
  }

  String good_exampels;
}
