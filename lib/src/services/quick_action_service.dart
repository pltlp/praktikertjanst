import 'dart:async';
import 'package:angular/angular.dart';
import '../models/model.dart';
import '../models/quick_action.dart';

@Injectable()
class QuickActionService {
  Future<Map<String, QuickAction>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, QuickAction> get data => _data;

  final Map<String, QuickAction> _data = {
    'För dig på tandläkarmottagning': new QuickAction()
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'För dig på tandläkarmottagning'
        ..description = 'Vad är följderna av kvicksilver i naturen'
        ..url = 'kursrum-for-tandvardsteam')
      ..phrases['en'] = (new Phrases()
        ..name = 'For you at the dentist practice'
        ..description = 'What are the consequences of quicksilver in nature'
        ..url = 'course-room-for-dental-teams')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'För dig som är dentaltekniker': new QuickAction()
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'För dig som är dentaltekniker'
        ..description = 'Vad är följderna av kvicksilver i naturen'
        ..url = '')
      ..phrases['en'] = (new Phrases()
        ..name = 'For you at the dentist practice'
        ..description = 'What are the consequences of quicksilver in nature'
        ..url = 'course-room-for-dental-technicians')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'För dig som är servicetekniker': new QuickAction()
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'För dig som är servicetekniker'
        ..description = 'Vad är följderna av kvicksilver i naturen'
        ..url = '')
      ..phrases['en'] = (new Phrases()
        ..name = 'For you at the dentist practice'
        ..description = 'What are the consequences of quicksilver in nature'
        ..url = 'for-you-at-the-dentist-practice')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Lagar och regler': new QuickAction()
      ..icon = 'gavel'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Lagar och regler'
        ..description =
            'Här kan du ta reda på vilka lagar och regler som gäller'
        ..url = 'lagar-och-regler')
      ..phrases['en'] = (new Phrases()
        ..name = 'Laws and regulations'
        ..description =
            'Here you can find out what laws and regulations are in force'
        ..url = 'laws-and-regulations')
      ..imgSrc = 'pics/clean_future.jpg',
    'Kvicksilver i naturen': new QuickAction()
      ..icon = 'pool'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Kvicksilver i naturen'
        ..description = 'Vad är följderna av kvicksilver i naturen'
        ..url = 'kvicksilver-i-naturen')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quicksilver in nature'
        ..description = 'What are the consequences of quicksilver in nature'
        ..url = 'mercury-in-nature')
      ..imgSrc = 'pics/quicksilver_management.jpg',
    'Goda exempel - sanering': new QuickAction()
      ..icon = 'favorite_border'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - sanering'
        ..description = 'Hur går kvicksilver amalgam sanering egentligen till?'
        ..url = 'goda-exempel-sanering')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples - remidiation'
        ..description =
            'What is needed for effective quicksilver amalgam remediation?'
        ..url = 'good-examples-remediation')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Goda exempel - skötsel': new QuickAction()
      ..icon = 'timelapse'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - skötsel'
        ..description = 'Hur sköter man sitt kvicksilver amalgam?'
        ..url = 'goda-exempel-skotsel')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples-maintenance'
        ..description = 'How best to handle mercury amalgam?'
        ..url = 'good-examples-management')
      ..imgSrc = 'pics/quicksilver_management.jpg',
    'Goda exempel - installation': new QuickAction()
      ..icon = 'timelapse'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - installation'
        ..description = 'Hur installerar man en amalgaman avskiljare?'
        ..url = 'goda-exempel-installation')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples - installation'
        ..description = 'How do I install an amalgam separator?'
        ..url = 'good-examples-installation')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Översikt på mottagningen': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Översikt på mottagningen'
        ..description =
            'Vad behöver din mottagning för att du  ska kunna installera utrustning för kvicksilver amalgaman hantering?'
        ..url = 'oversikt-pa-mottagningen')
      ..phrases['en'] = (new Phrases()
        ..name = 'Overview of the reception'
        ..description =
            'What do your patient reception facilities need for installing mercury amalgam handling equipment?'
        ..url = 'overview-of-the-reception')
      ..imgSrc = 'pics/clean_future.jpg',
    'Instruktioner för tanvårdsteam': new QuickAction()
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Instruktioner för tanvårdsteam'
        ..description =
            'Ett par enkla regler, instruktioner och koncept för tandvårdsteam!'
        ..url = 'instruktioner-for-tanvardsteam')
      ..phrases['en'] = (new Phrases()
        ..name = 'Instructions for dental care teams'
        ..description =
            'A few simple rules, instructions and concepts for dental care teams!'
        ..url = 'instructions-for-dental-care-teams')
      ..imgSrc = 'pics/clean_future.jpg',
    'Instruktioner för dentaltekniker': new QuickAction()
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Instruktioner för dentaltekniker'
        ..description =
            'Ett par enkla regler, instruktioner och koncept för dentaltekniker!'
        ..url = 'instruktioner-för-dentaltekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'Instructions for dental technicians'
        ..description =
            'A few simple rules, instructions and concepts fordental technicians!'
        ..url = 'instructions-for-dental-care-technicians')
      ..imgSrc = 'pics/quicksilver_management.jpg',
    'Instruktioner för servicetekniker': new QuickAction()
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Instruktioner för servicetekniker'
        ..description =
            'Ett par enkla regler, instruktioner och koncept för servicetekniker!'
        ..url = 'instruktioner-for-servicetekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'Instructions for service technicians'
        ..description =
            'A few simple rules, instructions and concepts for service technicians!'
        ..url = 'instructions-for-service-care-technicians')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Quiz vad har du lärt dig? - tandvårdsteam': new QuickAction()
      ..icon = 'question_answer'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Quiz vad har du lärt dig? - tandvårdsteam'
        ..description = 'En quiz för tandvårdsteam, testa dina kunskaper här!'
        ..url = 'quiz-tandvardsteam')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quiz what have you learned? - dental teams'
        ..description = 'Quiz for dental teams, test your knowledge here!'
        ..url = 'quiz-for-dental-teams')
      ..imgSrc = 'pics/quicksilver_management.jpg',
    'Quiz vad har du lärt dig? - dentaltekniker': new QuickAction()
      ..icon = 'question_answer'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Quiz vad har du lärt dig? - dentaltekniker'
        ..description = 'En quiz för dentaltekniker, testa dina kunskaper här!'
        ..url = 'quiz-dentaltekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quiz what have you learned? - dental technicians'
        ..description = 'Quiz for dental technicians, test your knowledge here!'
        ..url = 'quiz-for-dental-technicians')
      ..imgSrc = 'pics/clean_future.jpg',
    'Quiz vad har du lärt dig?': new QuickAction()
      ..icon = 'question_answer'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Quiz vad har du lärt dig? - dentaltekniker'
        ..description = 'En quiz för dentaltekniker, testa dina kunskaper här!'
        ..url = 'quiz-dentaltekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quiz what have you learned? - dental technicians'
        ..description = 'Quiz for dental technicians, test your knowledge here!'
        ..url = 'quiz-for-dental-technicians')
      ..imgSrc = 'pics/clean_future.jpg',
    'Quiz vad har du lärt dig? - servicetekniker': new QuickAction()
      ..icon = 'question_answer'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Quiz vad har du lärt dig? - servicetekniker'
        ..description = 'En quiz för servicetekniker, testa dina kunskaper här!'
        ..url = 'quiz-servicetekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quiz what have you learned? - service technicians'
        ..description =
            'Quiz for service technicians, test your knowledge here!'
        ..url = 'quiz-for-service-technicians')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Begreppsförklaringar': new QuickAction()
      ..icon = 'format_list_numbered'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Begreppsförklaringar'
        ..description = 'Här hittar du en lista på alla viktiga begrepp!'
        ..url = 'begreppsforklaringar')
      ..phrases['en'] = (new Phrases()
        ..name = 'Glossary'
        ..description = 'Here you will find a list of all important concepts!'
        ..url = 'glossary')
      ..imgSrc = 'pics/clean_future.jpg',
    'Rutiner vid patientbehandling': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Rutiner vid patientbehandling'
        ..description =
            'Här kan du bocka av att du har följt rutiner för amalgam hantering vid patientbehandling!'
        ..url = 'rutiner-vid-patientbehandling')
      ..phrases['en'] = (new Phrases()
        ..name = 'Routines during patient treatment'
        ..description =
            'Here you can check that you have followed the procedures for amalgam handling in during patient treatment!'
        ..url = 'routines-during-patient-treatment')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Skötsel av amalgamavskiljare under en vecka': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Skötsel av amalgamavskiljare under en vecka'
        ..description =
            'Här kan du se vilka rutiner som ska följas gällande amalgam hantering varje vecka'
        ..url = 'skotsel-av-amalgamavskiljare-under-en-vecka')
      ..phrases['en'] = (new Phrases()
        ..name = 'Maintenance of amalgam separators for one week'
        ..description =
            'Here you can see which routines should be followed each week'
        ..url = 'maintenance-of-amalgam-separators-for-one-week')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Skötsel av amalgamavskiljare mer sällan': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Skötsel av amalgamavskiljare mer sällan'
        ..description =
            'Här kan du se vilka rutiner som ska följas gällande amalgam hantering när det sker mer sällan'
        ..url = 'skotsel-av-amalgamavskiljare-mer-sallan')
      ..phrases['en'] = (new Phrases()
        ..name = 'Maintenance of amalgam separators more seldom'
        ..description =
            'Here you can see which routines should be followed if amalgam is managed more seldom'
        ..url = 'maintenance-of-amalgam-separators-more-seldom')
      ..imgSrc = 'pics/clean_future.jpg',
    'Installation av amalgamavskiljare': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Installation av amalgamavskiljare'
        ..description =
            'Här kan hittar mer exakt information for hur du ska installera en amalgam avskiljare'
        ..url = 'installation-of-amalgam-separator')
      ..phrases['en'] = (new Phrases()
        ..name = 'Installation of amalgam separator'
        ..description =
            'Here you can see which routines should be followed to install an amalgam separator'
        ..url = 'installation-of-amalgam-separator')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Installation of amalgam separator': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Rätt installerat?'
        ..description =
            'En kort checklista för att se om installationen av amalgam avskiljare har gått rätt till!'
        ..url = 'check-installation-of-amalgam-separator')
      ..phrases['en'] = (new Phrases()
        ..name = 'Has everything been installed properly?'
        ..description =
            'Here you will find short checklist to make sure your installation has been performed correctly!'
        ..url = 'check-installation-of-amalgam-separator')
      ..imgSrc = 'pics/quicksilver_management.jpg',
    'Byte av amalgamavskiljare (vått och torrt sugsystem)': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Byte av amalgamavskiljare (vått och torrt sugsystem)'
        ..description = 'Hur går byten av amalgamavskiljare till?'
        ..url = 'replacement-of-amalgam-separator')
      ..phrases['en'] = (new Phrases()
        ..name = 'Replacement of amalgam separator (wet and dry suction system)'
        ..description = 'Hur går byten av amalgamavskiljare till?'
        ..url = 'replacement-of-amalgam-separator')
      ..imgSrc = 'pics/clean_future.jpg',
    'Dubbelkolla att allting fungerar!': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Funktionskontroll'
        ..description = 'Dubbelkolla att allting fungerar!'
        ..url = 'all-functions-check')
      ..phrases['en'] = (new Phrases()
        ..name = 'All functions check!'
        ..description = 'Double-check that everything is working properly!'
        ..url = 'all-functions-check')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Rengöring av utjämningskärl': new QuickAction()
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Rengöring av utjämningskärl'
        ..description =
            'Här hittar du instruktioner för hur man rengör utjämningskärl'
        ..url = 'cleaning-of-the-leveling vessel')
      ..phrases['en'] = (new Phrases()
        ..name = 'Cleaning of the leveling vessel'
        ..description =
            'Here you will find instructions for cleaning the leveling vessel'
        ..url = 'cleaning-of-the-leveling vessel')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
    'Rengöring och tömning av vattenlås': new QuickAction()
      ..icon = 'invert_colors'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Rengöring och tömning av vattenlås'
        ..description =
            'Här hittar du instruktioner för hur man rengör vattenlås'
        ..url = 'cleaning-and-emptying-of-water-taps')
      ..phrases['en'] = (new Phrases()
        ..name = 'Cleaning of the leveling vessel'
        ..description =
            'Here you will find instructions for cleaning and emptying of water trap'
        ..url = 'cleaning-and-emptying-of-water-traps')
      ..imgSrc = 'pics/quicksilver_management.jpg',
    'Slutförvaring': new QuickAction()
      ..icon = 'storage'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Slutförvaring'
        ..description =
            'Här hittar du instruktioner för slutförvring av kvicksilver avfall'
        ..url = 'storeage')
      ..phrases['en'] = (new Phrases()
        ..name = 'Storage'
        ..description =
            'Here you will find instructions for  storage of mercury waste'
        ..url = 'storeage')
      ..imgSrc = 'pics/clean_future.jpg',
    'Här hittar du instruktioner för sanering av kvicksilver avfall':
        new QuickAction()
          ..icon = 'autorenew'
          ..phrases['sv'] = (new Phrases()
            ..name = 'Sanering'
            ..description =
                'Här hittar du instruktioner för sanering av kvicksilver avfall'
            ..url = 'sanering')
          ..phrases['en'] = (new Phrases()
            ..name = 'Decontamination'
            ..description =
                'Here you will find instructions for decontamination of mercury waste'
            ..url = 'decontamination')
          ..imgSrc = 'pics/clean_future.jpg',
    'För dig som bara är nyfiken': new QuickAction()
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'För dig som bara är nyfiken'
        ..description =
            'Här hittar du lite allmän information om alla våra verksamhetsområden'
        ..url = 'kursrum-for-nyfikna')
      ..phrases['en'] = (new Phrases()
        ..name = 'For you who is just curious'
        ..description =
            'Here you will find some general information about all our areas of activity!'
        ..url = 'for-you-who-is-curious')
      ..imgSrc = 'pics/header_silver_service_us.jpg',
  };
}
