import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import '../../models/document.dart';


@Component(
    directives: const [NgFor, MaterialIconComponent, RouterLink],
    selector: 'p-document',
    styleUrls: const ['document_component.css'],
    templateUrl: 'document_component.html',
    pipes: [NamePipe])
class DocumentComponent {

  DocumentComponent();

  @Input('model')
  Document model;

  
}
