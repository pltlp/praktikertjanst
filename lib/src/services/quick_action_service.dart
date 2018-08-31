import 'dart:async';
import 'package:angular/angular.dart';
import '../models/quick_action.dart';

@Injectable()
class QuickActionService {
  Future<List<QuickAction>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }
}

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
      ..url = 'instructions-for-dental-care-technicians')
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
          'Here you can see which routines should be followed to install amalgam separator'
      ..url = 'installation-of-amalgam-separator')
    ..imgSrc = 'pics/clean_future.jpg',

  /*
    ..name = 'Important concepts'
    ..description = 'Here are some important concepts you may want to remember!'
    ..url = 'important-concepts'
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..name = 'Five quick ones!'
    ..url = ''
    ..description =
        'Answer five quick questions to find information relevant to you'
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'timelapse'
    ..name = 'Self estimation'
    ..description =
        'How long will it take for you to manage your quicksilver amalgam?'
    ..url = ''
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'autorenew'
    ..name = 'Quicksilver amalgam'
    ..description = 'What does quicksilver amalgam consist of?'
    ..url = ''
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..name = 'Self estimation'
    ..description = 'How long will it take to manage your quicksilver amalgam?'
    ..url = ''
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..name = 'Self evaluation'
    ..url = ''
    ..description = 'Find out if you know everything you need to!'
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..name = 'What have you learned?'
    ..url = ''
    ..description = 'Test your newly acquired knowledge here!'
    ..imgSrc = 'pics/quicksilver_management.jpg',
    */
];
