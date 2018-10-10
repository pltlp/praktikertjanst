import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';

@Injectable()
class QuickActionService {
  Future<Map<String, Resource>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, Resource> get data => _data;

  final Map<String, Resource> _data = {
    'kursrum-for-tandvardsteam': new Resource()
      ..id = 'kursrum-for-tandvardsteam'
      ..type = ResourceType.courseRoom
      ..img_url = 'pics/header_silver_service_us.jpg'
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'För dig på tandläkarmottagning'
        ..description = 'Vad är följderna av kvicksilver i naturen?'
        ..url = 'kursrum-for-tandvardsteam')
      ..phrases['en'] = (new Phrases()
        ..name = 'For you at the dentist practice'
        ..description = 'What are the consequences of quicksilver in nature?'
        ..url = 'course-room-for-dental-teams')
      ..type = ResourceType.courseRoom,
    
    'kursrum-for-dentaltekniker': new Resource()
    ..id = 'kursrum-for-dentaltekniker'
      ..type = ResourceType.courseRoom
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'För dig som är dentaltekniker'
        ..description = 'Vad är följderna av kvicksilver i naturen?'
        ..url = 'kursrum-for-dentaltekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'For you at the dentist practice'
        ..description = 'What are the consequences of quicksilver in nature?'
        ..url = 'course-room-for-dental-technicians')
      ..img_url = 'pics/header_silver_service_us.jpg',
    
    'kursrum-for-servicetekniker': new Resource()
        ..id = 'kursrum-for-servicetekniker'
    
      ..type = ResourceType.courseRoom
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'För dig som är servicetekniker'
        ..description = 'Vad är följderna av kvicksilver i naturen'
        ..url = 'kursrum-for-servicetekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'For you at the dentist practice'
        ..description = 'What are the consequences of quicksilver in nature'
        ..url = 'for-you-at-the-dentist-practice')
      ..img_url = 'pics/header_silver_service_us.jpg',
    
    'lagar-och-regler': new Resource()
    ..id = 'lagar-och-regler'
      ..type = ResourceType.rise
      ..icon = 'gavel'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Lagar och regler'
        ..description =
            'Artikel om de lagar och regler som styr hanteringen av amalgam.'
        ..url = 'lagar-och-regler')
      ..phrases['en'] = (new Phrases()
        ..name = 'Laws and regulations'
        ..description =
            'Article on the laws and regulations governing the management of amalgam.'
        ..url = 'laws-and-regulations')
      ..img_url = 'pics/clean_future.jpg',
    
    
    'kvicksilver-i-naturen': new Resource()
        ..id = 'kvicksilver-i-naturen'
      ..type = ResourceType.rise
      ..icon = 'pool'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Kvicksilver i naturen'
        ..description =
            'Artikel om vad kvicksilver är och hur det påverkar naturen.'
        ..url = 'kvicksilver-i-naturen')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quicksilver in nature'
        ..description =
            'Article about what mercury is and how it affects nature.'
        ..url = 'mercury-in-nature')
      ..img_url = 'pics/quicksilver_management.jpg',


    'Goda exempel - sanering': new Resource()
    ..id = 'Goda exempel - sanering'
      ..type = ResourceType.video
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
      ..img_url = 'pics/header_silver_service_us.jpg',


    'Goda exempel - skötsel': new Resource()
      ..type = ResourceType.video
      ..icon = 'timelapse'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - skötsel'
        ..description = 'Hur sköter man sitt kvicksilver amalgam?'
        ..url = 'goda-exempel-skotsel')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples-maintenance'
        ..description = 'How best to handle mercury amalgam?'
        ..url = 'good-examples-management')
      ..img_url = 'pics/quicksilver_management.jpg',


    'Goda exempel - installation': new Resource()
      ..type = ResourceType.video
      ..icon = 'timelapse'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - installation'
        ..description = 'Hur installerar man en amalgaman avskiljare?'
        ..url = 'goda-exempel-installation')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples - installation'
        ..description = 'How do I install an amalgam separator?'
        ..url = 'good-examples-installation')
      ..img_url = 'pics/header_silver_service_us.jpg',


    'Översikt på mottagningen': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/clean_future.jpg',


    'Instruktioner för tandvårdsteam': new Resource()
      ..type = ResourceType.video
      ..icon = 'speaker_notes'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Instruktioner för tandvårdsteam'
        ..description =
            'Ett par enkla regler, instruktioner och koncept för tandvårdsteam!'
        ..url = 'instruktioner-for-tanvardsteam')
      ..phrases['en'] = (new Phrases()
        ..name = 'Instructions for dental care teams'
        ..description =
            'A few simple rules, instructions and concepts for dental care teams!'
        ..url = 'instructions-for-dental-care-teams')
      ..img_url = 'pics/clean_future.jpg',


    'Instruktioner för dentaltekniker': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/quicksilver_management.jpg',


    'Instruktioner för servicetekniker': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/header_silver_service_us.jpg',


    'Quiz vad har du lärt dig? - tandvårdsteam': new Resource()
      ..type = ResourceType.quiz
      ..icon = 'question_answer'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Quiz vad har du lärt dig? - tandvårdsteam'
        ..description = 'En quiz för tandvårdsteam, testa dina kunskaper här!'
        ..url = 'quiz-tandvardsteam')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quiz what have you learned? - dental teams'
        ..description = 'Quiz for dental teams, test your knowledge here!'
        ..url = 'quiz-for-dental-teams')
      ..img_url = 'pics/quicksilver_management.jpg',


    'Quiz vad har du lärt dig? - dentaltekniker': new Resource()
      ..type = ResourceType.quiz
      ..icon = 'question_answer'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Quiz vad har du lärt dig? - dentaltekniker'
        ..description = 'En quiz för dentaltekniker, testa dina kunskaper här!'
        ..url = 'quiz-dentaltekniker')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quiz what have you learned? - dental technicians'
        ..description = 'Quiz for dental technicians, test your knowledge here!'
        ..url = 'quiz-for-dental-technicians')
      ..img_url = 'pics/clean_future.jpg',


    'Quiz vad har du lärt dig?': new Resource()
      ..type = ResourceType.quiz
      ..icon = 'question_answer'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Quiz vad har du lärt dig?'
        ..description = 'En quiz, testa dina kunskaper här!'
        ..url = 'quiz-for-allmenhet')
      ..phrases['en'] = (new Phrases()
        ..name = 'Quiz what have you learned? - dental technicians'
        ..description = 'Quiz for dental technicians, test your knowledge here!'
        ..url = 'quiz-for-dental-technicians')
      ..img_url = 'pics/clean_future.jpg',



    'Quiz vad har du lärt dig? - servicetekniker': new Resource()
      ..type = ResourceType.quiz
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
      ..img_url = 'pics/header_silver_service_us.jpg',


    'Rutiner vid patientbehandling': new Resource()
      ..type = ResourceType.rise
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
      ..img_url = 'pics/header_silver_service_us.jpg',




    'Skötsel av amalgamavskiljare under en vecka': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/header_silver_service_us.jpg',



    'Skötsel av amalgamavskiljare mer sällan': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/clean_future.jpg',


    'Installation av amalgamavskiljare': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/header_silver_service_us.jpg',


    'Installation of amalgam separator': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/quicksilver_management.jpg',


    'Byte av amalgamavskiljare (vått och torrt sugsystem)': new Resource()
      ..type = ResourceType.video
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Byte av amalgamavskiljare (vått och torrt sugsystem)'
        ..description = 'Hur går byten av amalgamavskiljare till?'
        ..url = 'replacement-of-amalgam-separator')
      ..phrases['en'] = (new Phrases()
        ..name = 'Replacement of amalgam separator (wet and dry suction system)'
        ..description = 'Hur går byten av amalgamavskiljare till?'
        ..url = 'replacement-of-amalgam-separator')
      ..img_url = 'pics/clean_future.jpg',



    'Dubbelkolla att allting fungerar!': new Resource()
      ..type = ResourceType.video
      ..icon = 'done_all'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Funktionskontroll'
        ..description = 'Dubbelkolla att allting fungerar!'
        ..url = 'all-functions-check')
      ..phrases['en'] = (new Phrases()
        ..name = 'All functions check!'
        ..description = 'Double-check that everything is working properly!'
        ..url = 'all-functions-check')
      ..img_url = 'pics/header_silver_service_us.jpg',


    'Rengöring av utjämningskärl': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/header_silver_service_us.jpg',


    'Rengöring och tömning av vattenlås': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/quicksilver_management.jpg',
    
    
    'Slutförvaring': new Resource()
      ..type = ResourceType.video
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
      ..img_url = 'pics/clean_future.jpg',


    'Här hittar du instruktioner för sanering av kvicksilver avfall':
        new Resource()
        ..type = ResourceType.video
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
          ..img_url = 'pics/clean_future.jpg',


    'for-dig-som-ar-nyfiken': new Resource()
      ..type = ResourceType.courseRoom
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
      ..img_url = 'pics/header_silver_service_us.jpg',
  };
}
