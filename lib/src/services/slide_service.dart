import 'dart:async';
import 'package:angular/angular.dart';
import '../models/slide.dart';

@Injectable()
class SlideService {
  Future<List<Slide>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return data = [
      new Slide()
        ..background_image = 'pics/pipe.jpg'
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
        ..background_image = 'pics/environmental_service_companies.jpg'
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
        ..background_image = 'pics/gloves.jpg'
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
            ..button_label = 'Read more',
          'fr': new SlidePhrases()
            ..paragraph =
                'Établir des normes pour informer l’installateur de la réduction des émissions d’amalgames.'
            ..link = '/fr/accueil/salle-formation-pour-techniciens-dentaires'
            ..button_label = 'En savoir plus',
          'es': new SlidePhrases()
            ..paragraph =
                'Establezca estándares para que el instalador sea consciente de la necesidad de minimizar las emisiones de amalgama.'
            ..link = '/en/inicio/aula-para-tecnicos-de-servicio'
            ..button_label = 'Leer más',
          'de': new SlidePhrases()
            ..paragraph =
                'Standards setzen, um das Bewusstsein des Installateurs für die Minimierung von Amalgamemissionen zu schärfen.'
            ..link = '/de/Start/kursraum-fur-servicetechniker'
            ..button_label = 'Mehr erfahren',
        },
      new Slide()
        ..background_image = 'pics/truck.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Rör som kan innehålla amalgamrester ska omhändertas som farligt avfall. Var uppmärksam vid rivning, stambyte och ombyggnad.'
            ..link = '/sv/hem/kursrum-for-mijoserviceforetag'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Pipes that can contain amalgam residue must be handled as hazardous waste. Take extra care when dismantling, replacing and renewing'
            ..link =
                '/en/home/training-room-for-environmental-maintenance-service-personnel'
            ..button_label = 'Read more',
          'fr': new SlidePhrases()
            ..paragraph =
                'Rincer les résidus d’amalgames des instruments en présence d’un séparateur d’amalgames, désinfecter le lavabo.'
            ..link = '/en/inicio/aula-para-tecnicos-de-servicio'
            ..button_label = 'En savoir plus',
          'es': new SlidePhrases()
            ..paragraph =
                'Enjuagar los residuos de amalgama de los instrumentos cuando hay un separador de amalgama y desinfectar el lavabo.'
            ..button_label = 'Leer más'
            ..link = '/en/inicio/aula-para-tecnicos-de-servicio',
          'de': new SlidePhrases()
            ..paragraph =
                'Spülen Sie bei Vorhandensein eines Amalgamabscheiders Amalgamreste aus Instrumenten, desinfizieren Sie die Spüle.'
            ..link = '/de/Start/kursraum-fur-servicetechniker'
            ..button_label = 'Mehr erfahren',
        },
      new Slide()
        ..background_image = 'pics/clean_the_sewer.jpg'
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
            ..button_label = 'Read more',
          'fr': new SlidePhrases()
            ..paragraph =
                'Décontaminer le tuyau de vidange pour éviter les perturbations et réduire le risque d’émissions de mercure'
            ..link = '/fr/accueil/salle-formation-pour-equipe-soins-dentaires'
            ..button_label = 'En savoir plus',
          'es': new SlidePhrases()
            ..paragraph =
                'Descontaminar el tubo de drenaje para evitar interrupciones y minimizar el riesgo de fugas de mercurio'
            ..link = '/en/inicio/training-room-for-dental-care-team'
            ..button_label = 'Leer más',
          'de': new SlidePhrases()
            ..paragraph =
                'Dekontaminieren Sie das Abflussrohr, um Störungen zu vermeiden und das Risiko von Quecksilberemissionen zu minimieren'
            ..link = '/de/Start/kursraum-für-zahnpflegeteam'
            ..button_label = 'Mehr erfahren',
        }
    ];
  }

  List<Slide> data = [];
}
