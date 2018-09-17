import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../../services/messages_service.dart';
import '../../services/word_service.dart';

@Component(
  selector: 'p-word-list',
  templateUrl: 'word_list_component.html',
  styleUrls: const ['word_list_component.css'],
  directives: const [NgFor],
  pipes: const [NamePipe],
  changeDetection: ChangeDetectionStrategy.OnPush
)
class WordListComponent {
  WordListComponent(this.msg, this.wordService);
 
  final MessagesService msg;
  final WordService wordService;

}