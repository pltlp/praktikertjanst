import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import 'src/components/carousel_component/carousel_component.dart';
import 'src/components/fullscreen_component/fullscreen_component.dart';
import 'src/components/learning_content_component/learning_content_component.dart';
import 'src/models/learning_content.dart';
import 'src/services/learning_content_service.dart';

@Component(
    selector: 'p-app',
    templateUrl: 'app_component.html',
    styleUrls: const [
      'app_component.css'
    ],
    directives: [
      NgFor,
      NgIf,
      NavbarComponent,
      FullscreenComponent,
      materialDirectives,
      CarouselComponent,
      LearningContentComponent
    ],
    providers: [
      materialProviders,
      LearningContentService
    ],
    pipes: [NamePipe])
class AppComponent implements OnInit {
  AppComponent(this._learningContentService);

  @override
  void ngOnInit() async {
   learningContents = await _learningContentService.getAll();
  }

  String companyName([int howMany = 1]) => Intl.plural(howMany,
      one: 'praktikertjänst',
      other: 'praktikertjänst',
      desc: 'name of the company');

  final MenuModel menuModel = new MenuModel<MenuItem>([
    new MenuItemGroup<MenuItem>([
      new MenuItem(Intl.message('Overview', name: 'overview')),
      new MenuItem(Intl.message('Installation', name: 'installation')),
      new MenuItem(Intl.message('Management', name: 'management')),
      new MenuItem(Intl.message('Decommissioning', name: 'decommissioning')),
    ])
  ]);
  final LearningContentService _learningContentService;
  List<LearningContent> learningContents = [];
}
