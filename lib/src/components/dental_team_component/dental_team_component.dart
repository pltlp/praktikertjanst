import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import '../../models/quick_action.dart';
import '../../models/rise.dart';
import '../../models/video.dart';
import '../../services/quick_action_service.dart';
import '../../services/rise_service.dart';
import '../../services/video_service.dart';
import '../carousel_component/carousel_component.dart';
import '../quick_action_component/quick_action_component.dart';
import '../rise_component/rise_component.dart';
import '../video_component/video_component.dart';

@Component(
    selector: 'p-dental-team',
    templateUrl: 'dental_team_component.html',
    styleUrls: const [
      'dental_team_component.css'
    ],
    directives: const [
      FoModalComponent,
      VideoComponent,
      RiseComponent,
      CarouselComponent,
      QuickActionComponent,
      NgIf,
      NgFor,
      materialDirectives
    ],
    providers: [
      VideoService,
      RiseService,
      QuckActionService,
      materialProviders
    ],
    pipes: [
      NamePipe
    ])
class DentalTeamComponent implements OnInit {
  DentalTeamComponent(this.videoService, this.riseService, this.quickActionService);

  void ngOnInit() async {
    component_title = Intl.message('Dental team', name: 'dental_team');

    videos = await videoService.getAll();
    riseContents = await riseService.getAll();
    quickActions = await quickActionService.getAll();
  }

  String component_title;
  String good_examples;
  final VideoService videoService;
  final RiseService riseService;
  final QuckActionService quickActionService;
  List<Video> videos = [];
  List<Rise> riseContents = [];
  List<QuickAction> quickActions = [];
}
