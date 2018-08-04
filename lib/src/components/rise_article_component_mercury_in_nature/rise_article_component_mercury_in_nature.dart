import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/rise.dart';
import '../../services/rise_service.dart';
import '../rise_component/rise_component.dart';

@Component(
    directives: const [NgFor, RiseComponent, MaterialIconComponent, NgIf],
    providers: const [RiseService],
    selector: 'p-rise-article-mercury-in-nature',
    styleUrls: const ['rise_article_component_mercury_in_nature.css'],
    templateUrl: 'rise_article_component_mercury_in_nature.html',
    pipes: [NamePipe])
class RiseArticleComponentMercuryInNature implements OnInit{

 RiseArticleComponentMercuryInNature(this.riceService);

  @override
  void ngOnInit() async
  {
    riseArticle = await riceService.get(0);
  }

  @Input()
  int height;
  final RiseService riceService;
  Rise riseArticle;
  
}
