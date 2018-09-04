import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/document.dart';
import '../../services/document_service.dart';
import '../document_component/document_component.dart';

@Component(
    directives: const [NgFor, DocumentComponent, MaterialIconComponent],
    providers: const [DocumentService],
    selector: 'p-documents',
    styleUrls: const ['documents_component.css'],
    templateUrl: 'documents_component.html',
    pipes: [NamePipe])
class DocumnetsComponent implements OnInit{

  DocumnetsComponent(this.documentService);

  @override
  void ngOnInit() async
  {
    documents = await documentService.getAll();
  }

  final DocumentService documentService;
  List<Document> documents = [];
  
}
