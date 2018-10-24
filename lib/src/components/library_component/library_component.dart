import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../components/documents_component/documents_component.dart';
import '../../components/resource_component/resource_component.dart';
import '../../models/resource.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';
import '../../services/video_service.dart';

@Component(
    directives: const [
      MaterialAutoSuggestInputComponent,
      DocumentsComponent,
      NgFor,
      NgIf,
      ResourceComponent,
      routerDirectives,
      FoModalComponent
    ],
    selector: 'p-library',
    styleUrls: const ['library_component.css'],
    templateUrl: 'library_component.html',
    pipes: [NamePipe],
    changeDetection: ChangeDetectionStrategy.OnPush)
class LibraryComponent implements OnDestroy {
  LibraryComponent(this.router, this.msg, this.riseService, this.quizService,
      this.videoService, this.sanitizer) {
       
        
    riseService.data.values.forEach((r) => resouces.add(r));
    quizService.data.values.forEach((r) => resouces.add(r));
    videoService.data.values.forEach((r) => resouces.add(r));

    // TODO: call whenever the language is changed

    _initSearchOptions();

    _onSearchSubscription =
        searchModel.selectionChanges.listen(_onSearchChange);
  }

  @override
  void ngOnDestroy() {
    _onSearchSubscription?.cancel();
  }

  void _initSearchOptions() {
    final optionGroups = <OptionGroup<SearchOption>>[
      new OptionGroup.withLabel(
          resouces
              .map((action) => new SearchOption()
                ..url = action.phrases[msg.currentLanguage].url
                ..label = action.phrases[msg.currentLanguage].name)
              .toList(growable: false),
          msg.course_modules)
    ];

    searchOptions =
        new StringSelectionOptions<SearchOption>.withOptionGroups(optionGroups);
  }

  void _onSearchChange(List<SelectionChangeRecord> changes) {
    if (changes.isNotEmpty && changes.first.added.isNotEmpty) {
      final SearchOption model = changes.first.added.first;

      if (model.url != null && model.url.isNotEmpty) {
        router.navigate('${msg.home_url}/${msg.library_url}/${model.url}');
      }
    }
  }

  @Input()
  String backgroundImage;

  final SelectionModel searchModel = new SelectionModel<SearchOption>.single();
  StringSelectionOptions<SearchOption> searchOptions;

  bool showModal = false;
  Router router;
  MessagesService msg;
  RiseService riseService;
  QuizService quizService;
  VideoService videoService;
  Video selectedModel;
  final DomSanitizationService sanitizer;
  List<Resource> resouces = [];

  StreamSubscription<List<SelectionChangeRecord>> _onSearchSubscription;
}

class SearchOption {
  String url;
  String label;

  @override
  String toString() => label;
}
