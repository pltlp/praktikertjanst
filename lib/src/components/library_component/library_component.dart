import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../components/documents_component/documents_component.dart';
import '../../components/quick_actions_component/quick_actions_component.dart';
import '../../models/quick_action.dart';
import '../../services/messages_service.dart';
import '../../services/quick_action_service.dart';

@Component(
    directives: const [
      NgIf,
      MaterialTooltipDirective,
      FoModalComponent,
      routerDirectives,
      QuickActionsComponent,
      MaterialAutoSuggestInputComponent,
      DocumentsComponent
    ],
    providers: const [MaterialIconComponent], 
    selector: 'p-library',
    styleUrls: const ['library_component.css'],
    templateUrl: 'library_component.html',
    pipes: [NamePipe])
class LibraryComponent {
  LibraryComponent(this.quickActionService, this.router, this.msg) {
    final optionGroups = <OptionGroup<QuickAction>>[
      new OptionGroup.withLabel(
          quickActionService.data.values.toList(growable: false),
          msg.course_modules),      
    ];

    searchOptions =
        new StringSelectionOptions<QuickAction>.withOptionGroups(optionGroups);
  }

  @Input()
  String backgroundImage;


  void scrollTop() {
    window.scrollTo(0, 0);
  }

  final SelectionModel searchModel = new SelectionModel<QuickAction>.single();
  StringSelectionOptions<QuickAction> searchOptions;

  bool showModal = false;
  Router router;
  MessagesService msg;
  final QuickActionService quickActionService;
}
