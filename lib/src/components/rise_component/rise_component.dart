import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import '../../models/rise.dart';

@Component(
  selector: 'p-rise',
  templateUrl: 'rise_component.html',
  styleUrls: const ['rise_component.css'],
  directives: const [],
)
class RiseComponent implements OnInit{
  
  RiseComponent(this.sanitizer);

  @override
  void ngOnInit()
  {
    url = sanitizer.bypassSecurityTrustResourceUrl(model.url);
  }
    
  bool showModal = false;
  SafeResourceUrl url;
  final DomSanitizationService sanitizer;

  @Input('model') 
  Rise model; 
  
}