import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    directives: const [MaterialTooltipDirective, MaterialIconComponent, NgIf, NgClass],
    providers: const [],
    pipes: [NamePipe],
    selector: 'p-button',
    styleUrls: const ['button_component.css'],
    templateUrl: 'button_component.html',
    changeDetection: ChangeDetectionStrategy.OnPush)
class ButtonComponent implements OnInit {
  @Input()
  String label;
  @Input()
  String labelBackgroundColor = '#00A0C8';
  @Input()
  String trailingIcon;
  @Input()
  String trailingIconBackgroundColor = '#00A0C8';
  @Input()
  String leadingContent;
  @Input()
  String leadingContentBackgrondColor = '#00A0C8';
  @Input()
  String labelHoverBackgroundColor = '#003C5A';

  String currentLabelBackgroundColor;
  String currentLeadingContentBackgroundColor;

  @override
  void ngOnInit() {
    currentLabelBackgroundColor = labelBackgroundColor;
    currentLeadingContentBackgroundColor = leadingContentBackgrondColor;
  }

  @HostListener('mouseenter')
  void onMouseEnter() {
    currentLabelBackgroundColor = labelHoverBackgroundColor;
    currentLeadingContentBackgroundColor = labelHoverBackgroundColor;
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    currentLabelBackgroundColor = labelBackgroundColor;
    currentLeadingContentBackgroundColor = leadingContentBackgrondColor;
  }
}
