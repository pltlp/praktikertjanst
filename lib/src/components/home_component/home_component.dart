import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../carousel_component/carousel_component.dart';
import '../essential_information_component/essential_information_component.dart';
import '../fullscreen_component/fullscreen_component.dart';
import '../main_header_component/main_header_component.dart';
import '../make_difference_component/make_difference_component.dart';
import '../quick_actions_component/quick_actions_component.dart';

@Component(
    selector: 'p-home',
    templateUrl: 'home_component.html',
    styleUrls: const [
      'home_component.css'
    ],
    directives: [
      EssentialInformationComponent,
      FullscreenComponent,
      CarouselComponent,
      MainHeaderComponent,
      MakeDifferenceComponent,
      QuickActionsComponent,
      NgFor,
      NgIf,
      FoYouTubePlayerComponent,
    ],
    providers: [],
    pipes: [
      NamePipe
    ])
class HomeComponent {
  HomeComponent();




}
