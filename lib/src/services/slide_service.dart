import 'dart:async';
import 'package:angular/angular.dart';
import '../models/slide.dart';


@Injectable()
class SlideService {
  Future<List<Slide>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return data = [
      new Slide()
        ..background_image =
            'pics/pipe.jpg'
        ..external_link = true
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Märk upp ledningar och rör som kan innehålla amalgam.'
            ..link = 'mailto:lifehg@ptj.se?Subject=Etiketter'
            ..button_label = 'Beställ etiketter',
          'en': new SlidePhrases()
            ..paragraph = 'Label pipes and tubes that may contain amalgam.'
            ..link = 'mailto:lifehg@ptj.se?Subject=Etiketter'
            ..button_label = 'Order labels'
        },
      new Slide()
        ..background_image =
            'pics/environmental_service_companies.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Ställ krav på installatörens kunskap om minimering av amalgamutsläpp.'
            ..link = '/sv/hem/kursrum-for-dentaltekniker'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Make sure that installers have knowledge about minimizing amalgam emissions.'
            ..link = '/en/home/course-room-for-dental-technicians'
            ..button_label = 'Read more',
        },
      new Slide()
        ..background_image =
            'pics/_DSC0236.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Spola bort amalgamrester från instrument där det finns amalgamavskiljare, före diskdesinficering.'
            ..link = '/sv/hem/kursrum-for-tandvardsteam'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Rinse out amalgam residues from instruments where there are amalgam separators before disinfection.'
            ..link = '/en/home/course-room-for-dental-teams'
            ..button_label = 'Read more'
        },
      new Slide()
        ..background_image =
            'pics/gloves.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Rör som kan innehålla amalgamrester ska omhändertas som farligt avfall. Var uppmärksam vid rivning, stambyte och ombyggnad.'
            ..link = '/sv/hem/kursrum-for-servicetekniker'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Tubes that may contain amalgam residues should be disposed of as hazardous waste. Pay attention during demolition, change of trunk and remodeling.'
            ..link = '/en/home/course-room-for-service-technicians'
            ..button_label = 'Read more'
        },
      new Slide()
        ..background_image =
            'pics/clean_the_sewer.png'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Sanera avloppsrören för att undvika driftstörningar och minska riskerna för kvicksilverutsläpp'
            ..link = '/sv/hem/kursrum-for-tandvardsteam'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Clean the drain pipes to avoid drift disturbances and reduce the risk of mercury emissions'
            ..link = '/en/home/course-room-for-dental-technicians'
            ..button_label = 'Read more'
        }
    ];
  }

  List<Slide> data = [];
}
