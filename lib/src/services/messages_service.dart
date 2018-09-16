import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get about => Intl.message('om', name: 'about');

  String get about_url => Intl.message('om', name: 'about_url');

  String get archive => Intl.message('arkiv', name: 'archive');

  String get archive_url => Intl.message('arkiv', name: 'archive_url');

  String get course_modules =>
      Intl.message('kursmoduler', name: 'course_modules');

  String get course_room_for_curious_carousel_header =>
      Intl.message('instruktionsfilmer',
          name: 'course_room_for_curious_carousel_header');

  String get course_room_for_curious_url =>
      Intl.message('kursrum-for-nyfikna', name: 'course_room_for_curious_url');

  String get currentLanguage => Intl.shortLocale(Intl.getCurrentLocale());

  String document(int howMany) => Intl.plural(howMany,
      one: 'dokument', other: 'dokument', name: 'document', args: [howMany]);

  String get document_url => Intl.message('dokument', name: 'document_url');

  String get documents_component_url =>
      Intl.message('dokument-lista', name: 'documents_component_url');

  String get english => Intl.message('engelska', name: 'english');

  String get glossary => Intl.message('begreppsförklaringar', name: 'glossary');

  String get glossary_url =>
      Intl.message('begreppsforklaringar', name: 'glossary_url');

  String get good_examples =>
      Intl.message('goda exempel', name: 'good_examples');

  String get home_url => Intl.message('hem', name: 'home_url');
  
  String get language => Intl.message('språk', name: 'language');

  String get learn_more => Intl.message('lär dig mer!', name: 'learn_more');

  String get library => Intl.message('bibliotek', name: 'library');

  String get library_button_tooltip => Intl.message(
      'Här finns alla våra kursmoment samlade på ett och samma ställe!',
      name: 'library_button_tooltip');

  String get library_header =>
      Intl.message('Här finns allt material samlat!', name: 'library_header');

  String get library_url => Intl.message('bibliotek', name: 'library_url');

  String get main_header =>
      Intl.message('En liten insats kan göra stor skillnad!',
          name: 'main_header');

  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'quick_actions_url');

  String get search => Intl.message('sök', name: 'search');

  String get spanish => Intl.message('spanska', name: 'spanish');

  String get swedish => Intl.message('svenska', name: 'swedish');

  String get type_here_to_search =>
      Intl.message('Skriv in här för att söka...', name: 'type_here_to_search');
}
