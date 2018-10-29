import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/resource.dart';
import '../../services/messages_service.dart';

@Component(
    selector: 'p-resource',
    templateUrl: 'resource_component.html',
    styleUrls: const ['resource_component.css'],
    directives: const [MaterialIconComponent, NgIf],
    pipes: [NamePipe])
class ResourceComponent implements OnInit {
  ResourceComponent(this.msg);

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
