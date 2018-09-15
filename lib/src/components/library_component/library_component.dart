import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../services/messages_service.dart';
import '../../components/documents_component/documents_component.dart';
import '../../components/quick_actions_component/quick_actions_component.dart';

@Component(
    directives: const [
      NgIf,
      MaterialTooltipDirective,
      FoModalComponent,
      routerDirectives,
      QuickActionsComponent,
      MaterialAutoSuggestInputComponent,
      DocumnetsComponent
    ],
    providers: const [MaterialIconComponent],
    selector: 'p-library',
    styleUrls: const ['library_component.css'],
    templateUrl: 'library_component.html',
    pipes: [NamePipe])
class LibraryComponent {
  LibraryComponent(this.router, this.msg);

  @Input()
  String backgroundImage;


  void scrollTop() {
    window.scrollTo(0, 0);
  }

  bool showModal = false;
  Router router;
  MessagesService msg;
}
