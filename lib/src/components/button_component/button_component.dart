import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    directives: const [MaterialTooltipDirective, NgIf],
    providers: const [],
    pipes: [NamePipe],
    selector: 'p-button',
    styleUrls: const ['button_component.css'],
    templateUrl: 'button_component.html',
    changeDetection: ChangeDetectionStrategy.OnPush)
class ButtonComponent {  
  @Input('button_label')
  String button_label;

  @Input('tooltip')
  String tooltip;
}
