import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get about => Intl.message('om', name: 'about');

  String get about_url => Intl.message('om', name: 'about_url');

  String get archive => Intl.message('arkiv', name: 'archive');

  String get archive_url => Intl.message('arkiv', name: 'archive_url');

  String get cancel => Intl.message('avbryt', name: 'cancel');

  String get close => Intl.message('stäng', name: 'close');

  String get continueMsg => Intl.message('nästa', name: 'continueMsg');

  String get course_modules =>
      Intl.message('kursmoduler', name: 'course_modules');

  String get course_room_for_curious_carousel_header =>
      Intl.message('instruktionsfilmer',
          name: 'course_room_for_curious_carousel_header');

  String get course_room_for_curious_url =>
      Intl.message('kursrum-for-nyfikna', name: 'course_room_for_curious_url');

  String get course_room_for_dental_teams_url =>
      Intl.message('kursrum-for-tandvardsteam',
          name: 'course_room_for_dental_teams');

  String get course_room_for_dental_technicians_url =>
      Intl.message('kursrum-for-dentaltekniker',
          name: 'course_room_for_dental_technicians_url');

  String get course_room_for_service_technicians_url =>
      Intl.message('kursrum-for-servicetekniker',
          name: 'course_room_for_service_technicians_url');

  String get currentLanguage => Intl.shortLocale(Intl.getCurrentLocale());

  String get document_url => Intl.message('dokument', name: 'document_url');

  String get documents_component_url =>
      Intl.message('dokumentlista', name: 'documents_component_url');

  String get english => Intl.message('engelska', name: 'english');

  String get find_right_content_for_you =>
      Intl.message('Hitta rätt innehåll för dig',
          name: 'find_right_content_for_you');

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

  String get menu => Intl.message('meny', name: 'menu');

  String get open => Intl.message('öppna', name: 'open');

  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'quick_actions_url');

  String get quiz_fail_text_1 => Intl.message(
      'Tyvärr har du inte tillräckligt många rätt för att bli godkänd på testet.',
      name: 'quiz_fail_text_1');

  String get quiz_fail_text_2 =>
      Intl.message('Läs på mer och försök igen.', name: 'quiz_fail_text_2');

  String get quiz_fail_title =>
      Intl.message('Tyvärr!', name: 'quiz_fail_title');

  String get quiz_success_agree_terms => Intl.message(
      'Jag samtycker till att Praktikertjänst AB sparar min e-postadress i upp till 12 månader. E-postadressen kommer inte användas i marknadsföringssyfte eller lämnas vidare till tredje part.',
      name: 'quiz_success_agree_terms');

  String get quiz_success_mail_sent_text =>
      Intl.message('Vi hör av oss.', name: 'quiz_success_mail_sent_text');

  String get quiz_success_mail_sent_title =>
      Intl.message('Tack!', name: 'quiz_success_mail_sent_title');

  String get quiz_success_text_1 => Intl.message(
      'Som en del av Hg-rid-projektetet vill vi utvärdera värdet av den här portalen.',
      name: 'quiz_success_text_1');

  String get quiz_success_text_2 => Intl.message(
      'Kan du tänka dig att svara på några vrågor via din mejl och några månader? I så fall skriver du in din mejladress här.',
      name: 'quiz_success_text_2');

  String get quiz_success_title =>
      Intl.message('Grattis, du har klarat testet!',
          name: 'quiz_success_title');

  String get redo_quiz => Intl.message('gör om testet', name: 'redo_quiz');

  String get search => Intl.message('sök', name: 'search');

  String get send => Intl.message('skicka', name: 'send');

  String get spanish => Intl.message('spanska', name: 'spanish');

  String get swedish => Intl.message('svenska', name: 'swedish');

  String get type_here_to_search =>
      Intl.message('Skriv in här för att söka...', name: 'type_here_to_search');

  String get word_list => Intl.message('ordlista', name: 'word_list');

  String document(int howMany) => Intl.plural(howMany,
      one: 'dokument', other: 'dokument', name: 'document', args: [howMany]);

  String word(int howMany) => Intl.plural(howMany,
      one: 'ord', other: 'ord', name: 'word', args: [howMany]);

  String get contact => Intl.message('kontakt', name: 'contact');
}
