import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    directives: const [
      MaterialTooltipDirective,
      MaterialIconComponent,
      NgIf,
      NgClass,
    ],
    providers: const [],
    pipes: [NamePipe],
    selector: 'p-button',
    styleUrls: const ['button_component.css'],
    templateUrl: 'button_component.html',
    changeDetection: ChangeDetectionStrategy.OnPush)
class ButtonComponent implements OnInit {
  @Input()
  String left;
  @Input()
  String middle;

  @Input()
  String right;

  @Input()
  String middleBackgroundColor = '#00A0C8';

  @Input()
  String leftBackgrondColor = '#00A0C8';

  @Input()
  String rightBackgroundColor = '#003C5A';

  @Input()
  String middleHoverBackgroundColor = '#003C5A';

  String currentMiddleBackgroundColor;
  String currentLeftBackgroundColor;
  String currentRightBackgroundColor;

  @override
  void ngOnInit() {
    currentMiddleBackgroundColor = middleBackgroundColor;
    currentLeftBackgroundColor = leftBackgrondColor;
    currentRightBackgroundColor = rightBackgroundColor;
  }

  @HostListener('mouseenter')
  void onMouseEnter() {
    currentMiddleBackgroundColor = middleHoverBackgroundColor;
    currentLeftBackgroundColor = middleHoverBackgroundColor;
    currentRightBackgroundColor = middleHoverBackgroundColor;
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    currentMiddleBackgroundColor = middleBackgroundColor;
    currentLeftBackgroundColor = leftBackgrondColor;
    currentRightBackgroundColor = rightBackgroundColor;
  }
}
