import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../components/button_component/button_component.dart';
import '../../models/word.dart';
import '../../services/messages_service.dart';
import '../../services/word_service.dart';
import 'word_component/word_component.dart';

@Component(
    selector: 'p-word-list',
    templateUrl: 'word_list_component.html',
    styleUrls: const ['word_list_component.css'],
    directives: const [
      MaterialAutoSuggestInputComponent,
      WordComponent,
      NgIf,
      NgFor,
      MaterialButtonComponent,
      MaterialIconComponent,
      FoCarouselComponent,
      FoCarouselSlideComponent,
      ButtonComponent
    ],
    pipes: const [NamePipe])
class WordListComponent implements OnDestroy {
  WordListComponent(this.msg, this.wordService) {
    // TODO: call whenever the language is changed
    _initSearchOptions();

    _onSearchSubscription =
        searchModel.selectionChanges.listen(_onSearchChange);
  }

  @override
  void ngOnDestroy() {
    _onSearchSubscription?.cancel();
  }

  void _onSearchChange(List<SelectionChangeRecord> changes) {
    if (changes.isNotEmpty && changes.first.added.isNotEmpty) {
      final SearchOption model = changes.first.added.first;
      selectedWord = wordService.data[model.id];
    } else
      selectedWord = null;
  }

  void _initSearchOptions() {
    final optionGroups = <OptionGroup<SearchOption>>[
      new OptionGroup(wordService.data.keys
          .map((key) => new SearchOption()
            ..id = key
            ..label = wordService.data[key].phrases[msg.currentLanguage].name)
          .toList(growable: false))
    ];

    searchOptions =
        new StringSelectionOptions<SearchOption>.withOptionGroups(optionGroups);
  }

  @Input()
  Word model;
  final MessagesService msg;
  final WordService wordService;
  Word selectedWord;

  final SelectionModel searchModel = new SelectionModel<SearchOption>.single();
  StringSelectionOptions<SearchOption> searchOptions;
  StreamSubscription<List<SelectionChangeRecord>> _onSearchSubscription;
}

class SearchOption {
  String id;
  String label;

  @override
  String toString() => label;
}
