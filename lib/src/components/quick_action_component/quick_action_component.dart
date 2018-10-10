import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/resource.dart';
import '../../services/messages_service.dart';

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
  QuickActionComponent(this.msg);

  @override
  void ngOnInit() {
    backgroundImage = 'url(${model?.img_url})';
  }

  String backgroundImage;
  final MessagesService msg;

  @Input('model')
  Resource model;

  @Input('backgroundColor')
  String backgroundColor;
}
