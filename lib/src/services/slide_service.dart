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
            ..link = '/sv/hem/kursrum-for-servicetekniker'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Set standards for the installer’s awareness of minimising amalgam emissions.'
            ..link = '/en/home/training-room-for-service-technicians'
            ..button_label = 'Read more',
        },
      new Slide()
        ..background_image =
            'pics/gloves.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Spola bort amalgamrester från instrument där det finns amalgamavskiljare, före diskdesinficering.'
            ..link = '/sv/hem/kursrum-for-tandvardsteam'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Rinse of amalgam residue from instruments when there is an amalgam separator, disinfect sink.'
            ..link = '/en/home/training-room-for-the-dental-care-teams'
            ..button_label = 'Read more'
        },
      new Slide()
        ..background_image =
            'pics/truck.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Rör som kan innehålla amalgamrester ska omhändertas som farligt avfall. Var uppmärksam vid rivning, stambyte och ombyggnad.'
            ..link = '/sv/hem/kursrum-for-mijoserviceforetag'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Pipes that can contain amalgam residue must be handled as hazardous waste. Take extra care when dismantling, replacing and renewing'
            ..link = '/en/home/training-room-for-environmental-maintenance-service-personnel'
            ..button_label = 'Read more'
        },
      new Slide()
        ..background_image =
            'pics/clean_the_sewer.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Sanera avloppsrören för att undvika driftstörningar och minska riskerna för kvicksilverutsläpp'
            ..link = '/sv/hem/kursrum-for-tandvardsteam'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Decontaminate the drain pipe to avoid disruptions and minimise the risk of mercury emissions'
            ..link = '/en/home/training-room-for-the-dental-care-teams'
            ..button_label = 'Read more'
        }
    ];
  }

  List<Slide> data = [];
}
