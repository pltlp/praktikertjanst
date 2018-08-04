import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/rise.dart';
import '../../services/rise_service.dart';
import '../rise_component/rise_component.dart';

@Component(
    directives: const [NgFor, RiseComponent, MaterialIconComponent, NgIf],
    providers: const [RiseService],
    selector: 'p-rise-article-important-concepts',
    styleUrls: const ['rise_article_component_important_concepts.css'],
    templateUrl: 'rise_article_component_important_concepts.html',
    pipes: [NamePipe])
class RiseArticleComponentImportantConcepts implements OnInit{

 RiseArticleComponentImportantConcepts(this.riceService);

  @override
  void ngOnInit() async
  {
    riseArticle = await riceService.get(1);
  }

  @Input()
  int height;
  final RiseService riceService;
  Rise riseArticle;
  
}
