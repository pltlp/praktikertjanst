import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get about => Intl.message('Om', name: 'about');
  String get archive => Intl.message('Arkiv', name: 'archive');
  String get archive_url => Intl.message('arkiv', name: 'archive_url');
  String get course_modules =>
      Intl.message('Kursmoduler', name: 'course_modules');
  String get course_room_for_curious_carousel_header =>
      Intl.message('Instruktionsfilmer',
          name: 'course_room_for_curious_carousel_header');
  String get course_room_for_curious_description => Intl.message(
      'Här kan du gå en kurs som kort beskriver alla våra verksamhetsområden...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      name: 'course_room_for_curious_description');
  String get course_room_for_curious_title =>
      Intl.message('Kursrum för dig som bara är nyfiken',
          name: 'course_room_for_curious_title');
  String get course_room_for_curious_url =>
      Intl.message('kursrum-for-nyfikna', name: 'course_room_for_curious_url');
  String get course_room_for_dental_teams_url =>
      Intl.message('kursrum-for-tandvardsteam',
          name: 'course_room_for_dental_teams_url');
  String get course_room_for_for_dental_teams =>
      Intl.message('Kursrum för tandvårdsteam',
          name: 'course_room_for_for_dental_teams');
  String get course_room_for_for_dental_teams_description => Intl.message(
      'Här kan du gå en kurs insriktad till dig som är del av ett tandvårdsteam...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      name: 'course_room_for_for_dental_teams_description');
  String get currentLanguage => Intl.shortLocale(Intl.getCurrentLocale());
  String get document_phrase =>
      Intl.message('Dokument', name: 'document_phrase');

  /*course room for curious*/

  String get document_url => Intl.message('dokument', name: 'document_url');
  String get documents_component_header =>
      Intl.message('Dokument', name: 'documents_component_header');

  String get documents_component_url =>
      Intl.message('dokument-lista', name: 'documents_component_url');

  String get english => Intl.message('Egelska', name: 'english');

  String get glossery => Intl.message('Begrepsförklarningar', name: 'glossery');

  String get glossery_url =>
      Intl.message('begrepsforklarningar', name: 'glossery_url');

  String get home_url => Intl.message('hem', name: 'home_url');
  String get language => Intl.message('Språk', name: 'language');

  String get learn_more => Intl.message('lär dig mer!', name: 'learn_more');

  String get library => Intl.message('Bibliotek', name: 'library');

  String get library_button_tooltip => Intl.message(
      'Här finns alla våra kursmoment samlade på ett och samma ställe!',
      name: 'library_button_tooltip');

  String get library_header =>
      Intl.message('Här finns all material samlat!', name: 'library_header');

  String get library_url => Intl.message('bibliotek', name: 'library_url');

  String get main_header =>
      Intl.message('en liten insats kan göra stor skillnad!',
          name: 'main_header');

  String get mercury_in_nature =>
      Intl.message('Kvicksilver i naturen', name: 'mercury_in_nature');

  String get mercury_in_nature_button_tooltip => Intl.message(
      'Vad är de långvariga effekterna av kvicksilver i nautren? Ta reda på det här!',
      name: 'mercury_in_nature_button_tooltip');

  String get mercury_in_nature_url =>
      Intl.message('kvicksilver-i-naturen', name: 'mercury_in_nature_url');
  String get overview_over_the_practice =>
      Intl.message('Översikt på mottagningen',
          name: 'overview_over_the_practice');
  String get overview_over_the_practice_url =>
      Intl.message('oversikt-pa-mottagningen',
          name: 'overview_over_the_practice_url');

  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'quick_actions_url');
  String get quiz_button_label =>
      Intl.message('Quiz - vad har du lärt dig?', name: 'quiz_button_label');

  String get quiz_button_tooltip =>
      Intl.message('Vad har du lärt dig? Testa dina kunskaper här!',
          name: 'quiz_button_tooltip');

  String get quiz_url => Intl.message('quiz', name: 'quiz_url');

  String get rules_and_reagulations =>
      Intl.message('Lagar och regler', name: 'rules_and_reagulations');

  String get search => Intl.message('Sök', name: 'search');

  String get spanish => Intl.message('Spanska', name: 'spanish');

  String get swedish => Intl.message('Svenska', name: 'swedish');

  String get type_here_to_search =>
      Intl.message('Skriv in här för att söka..', name: 'type_here_to_search');
}
