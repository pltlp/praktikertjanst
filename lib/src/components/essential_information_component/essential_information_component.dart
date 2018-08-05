import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/quick_action.dart';
import '../../models/video.dart';
import '../../services/quick_action_service.dart';
import '../../services/video_service.dart';
import '../carousel_component/carousel_component.dart';
import '../carousel_slide_section_component/carousel_slide_section_component.dart';
import '../quick_action_component/quick_action_component.dart';
import '../video_component/video_component.dart';

@Component(
    directives: const [
      NgFor,
      QuickActionComponent,
      MaterialIconComponent,
      VideoComponent,
      CarouselComponent,
      CarouselSlideSectionComponent,
      NgIf
    ],
    providers: const [QuickActionService, VideoService],
    selector: 'p-essential-information',
    styleUrls: const ['essential_information_component.css'],
    templateUrl: 'essential_information_component.html',
    pipes: [NamePipe])
class EssentialInformationComponent implements OnInit {
  EssentialInformationComponent(this.quickActionService, this.videoService);

  @override
  void ngOnInit() async {
    quickActions = await quickActionService.getAll();
  }

  @Input()
  String backgroundImage;

  final QuickActionService quickActionService;
  final VideoService videoService;
  List<QuickAction> quickActions = [];
  List<Video> videos = [];
}
