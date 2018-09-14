import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/model.dart';
import '../../services/messages_service.dart';

@Component(
    selector: 'p-video',
    templateUrl: 'video_component.html',
    styleUrls: const ['video_component.css'],
    directives: const [],
    providers: const [MessagesService],
    pipes: [NamePipe])
class VideoComponent implements OnInit {
  VideoComponent(this.sanitizer, this.msg);

  @override
  void ngOnInit() {
    url = sanitizer.bypassSecurityTrustResourceUrl(model.getPhrases()[msg.language].url);
  }

  @Input('model')
  Model model;
  
  @Input('height')
  int height = 35;
  
  final DomSanitizationService sanitizer;
  SafeResourceUrl url;
  MessagesService msg;
}
