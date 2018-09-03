import 'dart:async';
import 'package:angular/angular.dart';
import '../models/quick_action.dart';

@Injectable()
class QuickActionService {
  Future<List<QuickAction>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }

  Future<List<QuickAction>> getFrontPageQuickActions() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return quickActionsHome;
  }
}

List<QuickAction> quickActionsHome = [
  new QuickAction()
    ..icon = 'favorite_border'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'För dig på tandläkarmottagning'
      ..description =
          'Här hittar du all information som är intressant för dig som jobbar på tandläkarmottagning'
      ..url = '')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'For you who works at the dental practice'
      ..description =
          'Here you will find all the information useful for those who work at the dental practice'
      ..url = '')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'speaker_notes'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Instruktioner för dentaltekniker'
      ..description =
          'Ett par enkla regler, instruktioner och koncept för dentaltekniker!'
      ..url = 'good-examples-installation')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Instructions for dental technicians'
      ..description =
          'A few simple rules, instructions and concepts for dental technicians!'
      ..url = 'instructions-for-dental-care-technicians')
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'gavel'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Lagar och regler'
      ..description = 'Här kan du ta reda på vilka lagar och regler som gäller'
      ..url = 'laws-and-regulations')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Laws and regulations'
      ..description =
          'Here you can find out what laws and regulations are in force'
      ..url = 'laws-and-regulations')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'speaker_notes'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Instruktioner för servicetekniker'
      ..description =
          'Ett par enkla regler, instruktioner och koncept för servicetekniker!'
      ..url = 'instructions-for-service-technicians')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Instructions for service technicians'
      ..description =
          'A few simple rules, instructions and concepts for service technicians!'
      ..url = 'instructions-for-service-care-technicians')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'speaker_notes'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'För dig som bara är nyfiken'
      ..description =
          'Här hittar du lite allmän information om alla våra verksamhetsområden'
      ..url = 'for-you-who-is-curious')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'For you who is just curious'
      ..description =
          'Here you will find some general information about all our areas of activity!'
      ..url = 'for-you-who-is-curious')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Quiz vad har du lärt dig? '
      ..description = 'En kort quiz testa dina kunskaper här!'
      ..url = 'quiz-for-all')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Quiz what have you learned? - dental teams'
      ..description = 'Quiz for dental teams, test your knowledge here!'
      ..url = 'quiz-for-all')
    ..imgSrc = 'pics/quicksilver_management.jpg',
];

List<QuickAction> mockContent = [
  new QuickAction()
    ..icon = 'pool'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Kvicksilver i naturen'
      ..description = 'Vad är följderna av kvicksilver i naturen'
      ..url = 'mercury-in-nature')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Quicksilver in nature'
      ..description = 'What are the consequences of quicksilver in nature'
      ..url = 'mercury-in-nature')
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'gavel'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Lagar och regler'
      ..description = 'Här kan du ta reda på vilka lagar och regler som gäller'
      ..url = 'laws-and-regulations')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Laws and regulations'
      ..description =
          'Here you can find out what laws and regulations are in force'
      ..url = 'laws-and-regulations')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'favorite_border'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Goda exempel - sanering'
      ..description = 'Hur går kvicksilver amalgam sanering egentligen till?'
      ..url = 'good-examples-remediation')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Good examples - remidiation'
      ..description =
          'What is needed for effective quicksilver amalgam remediation?'
      ..url = 'good-examples-remediation')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'timelapse'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Goda exempel - skötsel'
      ..description = 'Hur sköter man sitt kvicksilver amalgam?'
      ..url = 'good-examples-management')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Good examples'
      ..description = 'How best to handle mercury amalgam?'
      ..url = 'good-examples-management')
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'timelapse'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Goda exempel - installation'
      ..description = 'Hur installerar man en amalgaman avskiljare?'
      ..url = 'good-examples-installation')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Good examples - installation'
      ..description = 'How do I install an amalgam separator?'
      ..url = 'good-examples-installation')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Översikt på mottagningen'
      ..description =
          'Vad behöver din mottagning för att du  ska kunna installera utrustning för kvicksilver amalgaman hantering?'
      ..url = 'good-examples-reception')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Overview of the reception'
      ..description =
          'What do your patient reception facilities need for installing mercury amalgam handling equipment?'
      ..url = 'instructions-for-dental-care-teams')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'speaker_notes'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Instruktioner för tanvårdsteam'
      ..description =
          'Ett par enkla regler, instruktioner och koncept för tandvårdsteam!'
      ..url = 'good-examples-installation')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Instructions for dental care teams'
      ..description =
          'A few simple rules, instructions and concepts for dental care teams!'
      ..url = 'instructions-for-dental-care-teams')
    ..imgSrc = 'pics/clean_future.jpg',

  /*nästa*/
  new QuickAction()
    ..icon = 'speaker_notes'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Instruktioner för dentaltekniker'
      ..description =
          'Ett par enkla regler, instruktioner och koncept för dentaltekniker!'
      ..url = 'good-examples-installation')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Instructions for dental technicians'
      ..description =
          'A few simple rules, instructions and concepts fordental technicians!'
      ..url = 'instructions-for-dental-care-technicians')
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'speaker_notes'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Instruktioner för servicetekniker'
      ..description =
          'Ett par enkla regler, instruktioner och koncept för servicetekniker!'
      ..url = 'instructions-for-service-technicians')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Instructions for service technicians'
      ..description =
          'A few simple rules, instructions and concepts for service technicians!'
      ..url = 'instructions-for-service-care-technicians')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Quiz vad har du lärt dig? - tandvårdsteam'
      ..description = 'En quiz för tandvårdsteam, testa dina kunskaper här!'
      ..url = 'quiz-for-dental-teams')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Quiz what have you learned? - dental teams'
      ..description = 'Quiz for dental teams, test your knowledge here!'
      ..url = 'quiz-for-dental-teams')
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Quiz vad har du lärt dig? - dentaltekniker'
      ..description = 'En quiz för dentaltekniker, testa dina kunskaper här!'
      ..url = 'quiz-for-dental-technicians')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Quiz what have you learned? - dental technicians'
      ..description = 'Quiz for dental technicians, test your knowledge here!'
      ..url = 'quiz-for-dental-technicians')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Quiz vad har du lärt dig? - servicetekniker'
      ..description = 'En quiz för servicetekniker, testa dina kunskaper här!'
      ..url = 'quiz-for-service-technicians')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Quiz what have you learned? - service technicians'
      ..description = 'Quiz for service technicians, test your knowledge here!'
      ..url = 'quiz-for-service-technicians')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'format_list_numbered'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Begreppsförklaringar'
      ..description = 'Här hittar du en lista på alla viktiga begrepp!'
      ..url = 'glossary')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Glossary'
      ..description = 'Here you will find a list of all important concepts!'
      ..url = 'glossary')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Rutiner vid patientbehandling'
      ..description =
          'Här kan du bocka av att du har följt rutiner för amalgam hantering vid patientbehandling!'
      ..url = 'glossary')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Routines during patient treatment'
      ..description =
          'Here you can check that you have followed the procedures for amalgam handling in during patient treatment!'
      ..url = 'routines-during-patient-treatment')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Skötsel av amalgamavskiljare under en vecka'
      ..description =
          'Här kan du se vilka rutiner som ska följas gällande amalgam hantering varje vecka'
      ..url = 'maintenance-of-amalgam-separators-for-one-week')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Maintenance of amalgam separators for one week'
      ..description =
          'Here you can see which routines should be followed each week'
      ..url = 'maintenance-of-amalgam-separators-for-one-week')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Skötsel av amalgamavskiljare mer sällan'
      ..description =
          'Här kan du se vilka rutiner som ska följas gällande amalgam hantering när det sker mer sällan'
      ..url = 'maintenance-of-amalgam-separators-more-seldom')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Maintenance of amalgam separators more seldom'
      ..description =
          'Here you can see which routines should be followed if amalgam is managed more seldom'
      ..url = 'maintenance-of-amalgam-separators-more-seldom')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Installation av amalgamavskiljare'
      ..description =
          'Här kan hittar mer exakt information for hur du ska installera en amalgam avskiljare'
      ..url = 'installation-of-amalgam-separator')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Installation of amalgam separator'
      ..description =
          'Here you can see which routines should be followed to install an amalgam separator'
      ..url = 'installation-of-amalgam-separator')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Rätt installerat?'
      ..description =
          'En kort checklista för att se om installationen av amalgam avskiljare har gått rätt till!'
      ..url = 'check-installation-of-amalgam-separator')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Has everything been installed properly?'
      ..description =
          'Here you will find short checklist to make sure your installation has been performed correctly!'
      ..url = 'check-installation-of-amalgam-separator')
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Byte av amalgamavskiljare (vått och torrt sugsystem)'
      ..description = 'Hur går byten av amalgamavskiljare till?'
      ..url = 'replacement-of-amalgam-separator')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Replacement of amalgam separator (wet and dry suction system)'
      ..description = 'Hur går byten av amalgamavskiljare till?'
      ..url = 'replacement-of-amalgam-separator')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Funktionskontroll'
      ..description = 'Dubbelkolla att allting fungerar!'
      ..url = 'all-functions-check')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'All functions check!'
      ..description = 'Double-check that everything is working properly!'
      ..url = 'all-functions-check')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Rengöring av utjämningskärl'
      ..description =
          'Här hittar du instruktioner för hur man rengör utjämningskärl'
      ..url = 'cleaning-of-the-leveling vessel')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Cleaning of the leveling vessel'
      ..description =
          'Here you will find instructions for cleaning the leveling vessel'
      ..url = 'cleaning-of-the-leveling vessel')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'invert_colors'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Rengöring och tömning av vattenlås'
      ..description = 'Här hittar du instruktioner för hur man rengör vattenlås'
      ..url = 'cleaning-and-emptying-of-water-taps')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Cleaning of the leveling vessel'
      ..description =
          'Here you will find instructions for cleaning and emptying of water trap'
      ..url = 'cleaning-and-emptying-of-water-traps')
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'storage'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Slutförvaring'
      ..description =
          'Här hittar du instruktioner för slutförvring av kvicksilver avfall'
      ..url = 'storeage')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Storage'
      ..description =
          'Here you will find instructions for  storage of mercury waste'
      ..url = 'storeage')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'autorenew'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'Sanering'
      ..description =
          'Här hittar du instruktioner för sanering av kvicksilver avfall'
      ..url = 'sanering')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'Decontamination'
      ..description =
          'Here you will find instructions for decontamination of mercury waste'
      ..url = 'decontamination')
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'speaker_notes'
    ..phrases['sv'] = (new QuickActionPhrases()
      ..name = 'För dig som bara är nyfiken'
      ..description =
          'Här hittar du lite allmän information om alla våra verksamhetsområden'
      ..url = 'for-you-who-is-curious')
    ..phrases['en'] = (new QuickActionPhrases()
      ..name = 'For you who is just curious'
      ..description =
          'Here you will find some general information about all our areas of activity!'
      ..url = 'for-you-who-is-curious')
    ..imgSrc = 'pics/header_silver_service_us.jpg',
];
