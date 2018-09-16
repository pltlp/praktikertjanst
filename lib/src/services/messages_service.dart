import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get about => Intl.message('Om', name: 'om');
  String get course_room_for_curious_url =>
      Intl.message('kursrum-for-nyfikna', name: 'kursrum-for-nyfikna');
  String get currentLanguage => Intl.shortLocale(Intl.getCurrentLocale());
  String get english => Intl.message('Egelska', name: 'engelska');
  String get home_url => Intl.message('hem', name: 'hem-url');
  String get language => Intl.message('Språk', name: 'sprak');
  String get library => Intl.message('Bibliotek', name: 'bibliotek');
  String get library_url => Intl.message('bibliotek', name: 'bibliotek');
  String get mercury_in_nature_url =>
      Intl.message('kvicksilver-i-naturen', name: 'kvicksilver-i-naturen');
  String get spanish => Intl.message('Spanska', name: 'spanska');
  String get swedish => Intl.message('Svenska', name: 'svenska');
  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'snabba-aktiviteter-url');
  String get mercury_in_nature =>
      Intl.message('Kvicksilver i natruen', name: 'kvicksilver-i-naturen-fras');

  /*course room for curious*/

  String get course_room_for_curious_title =>
      Intl.message('Kursrum för dig som bara är nyfiken',
          name: 'kursrum-for-nyfikna-titel');
  String get archive => Intl.message('Arkiv', name: 'arkiv');

  String get course_room_for_curious_description => Intl.message(
      'Här kan du gå en kurs som kort beskriver alla våra verksamhetsområden...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      name: 'kursrum-for-nyfikna-beskrivning');

  String get library_header => Intl.message('Här finns all material samlat!',
      name: 'here_you_can_find_all_content');

  String get searchLabel =>
      Intl.message('Skriv in här för att söka..', name: 'type_here_to_search');

  String get course_modules =>
      Intl.message('Kursmoduler', name: 'coure_modules');

  String get main_header =>
      Intl.message('en liten insats kan göra stor skillnad!',
          name: 'small_efforts_make_a_huge_difference');
  String get learn_more => Intl.message('lär dig mer!', name: 'learn_more');

  String get mercury_in_nature_button_tooltip => Intl.message(
      'Vad är de långvariga effekterna av kvicksilver i nautren? Ta reda på det här!',
      name: 'mercury_in_nature_tooltip');

  String get library_button_tooltip => Intl.message(
      'Här finns alla våra kursmoment samlade på ett och samma ställe!',
      name: 'library_button_tooltip');

  String get quiz_button_label =>
      Intl.message('Quiz - vad har du lärt dig?', name: 'quiz_button_label');

  String get quiz_button_tooltip =>
      Intl.message('Vad har du lärt dig? Testa dina kunskaper här!',
          name: 'quiz_button_tooltip');

  String get quiz_url => Intl.message('quiz', name: 'quiz');

  String get overview_over_the_practice =>
      Intl.message('Översikt på mottagningen',
          name: 'overview_over_the_practice');

  String get overview_over_the_practice_url =>
      Intl.message('oversikt-pa-mottagningen',
          name: 'oversikt-pa-mottagningen');

  String get course_room_for_curious_carousel_header =>
      Intl.message('Instruktionsfilmer',
          name: 'course_room_for_curious_carousel_header');

  String get archive_url => Intl.message('arkiv', name: 'arkiv');
  String get glossery => Intl.message('Begrepsförklarningar', name: 'glossery');
  String get glossery_url =>
      Intl.message('begrepsforklarningar', name: 'begrepsforklarningar');

  String get document_url => Intl.message('dokument', name: 'dokument');
  String get documents_component_url =>
      Intl.message('dokument-lista', name: 'dokument-lista');

  String get documents_component_header =>
      Intl.message('Dokument', name: 'documents_component_header');

 String get rules_and_reagulations =>
      Intl.message('Lagar och regler', name: 'rules_and_reagulations');

}

