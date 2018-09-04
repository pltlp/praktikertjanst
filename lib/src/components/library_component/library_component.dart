import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
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
  LibraryComponent(this.router);

  @Input()
  String backgroundImage;

  String get here_you_can_find_all_content =>
      Intl.message('Här finns all material samlat!',
          name: 'here_you_can_find_all_content');

  String get searchLabel =>
      Intl.message('Skriv in här för att söka..', name: 'type_here_to_search');

  String get library => Intl.message('Bibliotek', name: 'library');
  
  String get course_modules =>
      Intl.message('Kursmoduler', name: 'coure_modules');

  void scrollTop() {
    window.scrollTo(0, 0);
  }

  bool showModal = false;
  Router router;
}
