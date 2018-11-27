import 'package:angular/angular.dart';
import '../../services/messages_service.dart';

@Component(
    directives: const [],
    providers: const [MessagesService],
    selector: 'p-footer',
    styleUrls: const ['footer_component.css'],
    templateUrl: 'footer_component.html')
class FooterComponent {
FooterComponent(this.msg);

MessagesService msg;
}

