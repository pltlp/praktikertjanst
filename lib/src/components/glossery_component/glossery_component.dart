import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/gloss.dart';
import '../../services/glossery_service.dart';
import '../../services/messages_service.dart';

@Component(
  selector: 'p-glossery',
  templateUrl: 'glossery_component.html',
  styleUrls: const ['glossery_component.css'],
  directives: const [NgFor],
  pipes: const [NamePipe],
  changeDetection: ChangeDetectionStrategy.OnPush
)
class GlosseryComponent {
  GlosseryComponent(this.msg, this.glosseryService);
 
  final MessagesService msg;
  final GlosseryService glosseryService;
  List<Gloss> glosseries = [];

}