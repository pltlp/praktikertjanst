import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/video.dart';

@Component(
    selector: 'p-video',
    templateUrl: 'video_component.html',
    styleUrls: const ['video_component.css'],
    directives: const [],
    pipes: [NamePipe])
class VideoComponent implements OnInit {
  VideoComponent(this.sanitizer);

  @override
  void ngOnInit() {
    url = sanitizer.bypassSecurityTrustResourceUrl(model.url);
  }

  @Input()
  Video model;
  
  final DomSanitizationService sanitizer;
  SafeResourceUrl url;
}
