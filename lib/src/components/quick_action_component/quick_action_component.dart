import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quick_action.dart';

@Component(
    selector: 'p-quick-action',
    templateUrl: 'quick_action_component.html',
    styleUrls: const [
      'quick_action_component.css'
    ],
    directives: const [
      MaterialIconComponent,
    ],
    pipes: [
      NamePipe
    ])
class QuickActionComponent implements OnInit {
  QuickActionComponent();

  @override
  void ngOnInit() {
    backgroundImage = 'url(${model.imgSrc})';
  }

  void scrollTop()
  {
    window.scrollTo(0,0);
  }

  String backgroundImage;

  @Input('model')
  QuickAction model;

  @Input('backgroundColor')
  String backgroundColor;
}
