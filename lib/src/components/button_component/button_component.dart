import 'dart:html';
import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    directives: const [routerDirectives, MaterialTooltipDirective],
    providers: const [],
    pipes: [NamePipe],
    selector: 'p-button',
    styleUrls: const ['button_component.css'],
    templateUrl: 'button_component.html')
class ButtonComponent implements OnInit {
  @override
  void ngOnInit() {}

  void scrollTop() {
    window.scrollTo(0, 0);
  }

  @Input('button_label')
  String button_label;

  @Input('tooltip')
  String tooltip;
}
