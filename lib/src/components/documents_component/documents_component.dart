import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/document.dart';
import '../../services/document_service.dart';
import '../../services/messages_service.dart';
import '../document_component/document_component.dart';
import '../fullscreen_component/fullscreen_component.dart';

@Component(
    directives: const [NgFor, DocumentComponent, FullscreenComponent, MaterialIconComponent],
    providers: const [],
    selector: 'p-documents',
    styleUrls: const ['documents_component.css'],
    templateUrl: 'documents_component.html',
    pipes: [NamePipe],
    changeDetection: ChangeDetectionStrategy.OnPush)
class DocumentsComponent implements OnInit {
  DocumentsComponent(this.documentService, this.msg);

  @override
  void ngOnInit() async {
    documents = documentService.data.values.toList();
  }

  @Input()
  int offsetTop = 140;

  final DocumentService documentService;
  final MessagesService msg;
  List<Document> documents = [];
}
