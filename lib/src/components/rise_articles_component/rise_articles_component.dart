import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/rise.dart';
import '../../services/rise_service.dart';
import '../rise_component/rise_component.dart';

@Component(
    directives: const [NgFor, RiseComponent, MaterialIconComponent],
    providers: const [RiseService],
    selector: 'p-rise-articles',
    styleUrls: const ['rise_articles_component.css'],
    templateUrl: 'rise_articles_component.html',
    pipes: [NamePipe])
class RiseArticlesComponent implements OnInit{

 RiseArticlesComponent(this.riceService);

  @override
  void ngOnInit() async
  {
    riseArticles = await riceService.getAll();
  }

  @Input()
  String backgroundImage;
  final RiseService riceService;
  List<Rise> riseArticles = [];
  
}
