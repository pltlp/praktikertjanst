import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../../services/messages_service.dart';

@Component(
    selector: 'p-about',
    templateUrl: 'about_component.html',
    styleUrls: ['about_component.css'],
    directives: [],
    pipes: [NamePipe],
    changeDetection: ChangeDetectionStrategy.OnPush)
class AboutComponent {
  AboutComponent(this.msg);

  final MessagesService msg;
}
