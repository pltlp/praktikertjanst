import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../button_component/button_component.dart';
import '../../services/messages_service.dart';

@Component(
    directives: const [MaterialIconComponent, ButtonComponent],
    providers: const [materialProviders],
    selector: 'p-main-header',
    styleUrls: const ['main_header_component.css'],
    templateUrl: 'main_header_component.html',
    pipes: [NamePipe])
class MainHeaderComponent {
MainHeaderComponent(this.msg);

MessagesService msg;
}
