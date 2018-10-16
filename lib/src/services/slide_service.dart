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
            'http://www.southhillpediatricdentistry.com/assets/girl-scared-cavity-600px.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Märk upp ledningar och rör som kan innehålla amalgam.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Beställ etiketter',
          'en': new SlidePhrases()
            ..paragraph = 'Label pipes and tubes that may contain amalgam.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Order labels',
        },
      new Slide()
        ..background_image =
            'https://blog.hjtdesign.com/hubfs/child-dentist-hjt.jpg?t=1531161107135'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Ställ krav på installatörens kunskap om minimering av amalgamutsläpp.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Make sure that installers have knowledge about minimizing amalgam emissions.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Read more',
        },
      new Slide()
        ..background_image =
            'https://www.wsda.org/images/librariesprovider52/default-album/childrenreferral.jpg?sfvrsn=0'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Spola bort amalgamrester från instrument där det finns amalgamavskiljare, före diskdesinficering.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Rinse out amalgam residues from instruments where there are amalgam separators before disinfection.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Read more'
        },
      new Slide()
        ..background_image =
            'https://www.medentalcareburwood.com.au/wp-content/uploads/cdbs-clear-1.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Rör som kan innehålla amalgamrester ska omhändertas som farligt avfall. Var uppmärksam vid rivning, stambyte och ombyggnad.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Tubes that may contain amalgam residues should be disposed of as hazardous waste. Pay attention during demolition, change of trunk and remodeling.'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Read more'
        },
      new Slide()
        ..background_image =
            'https://www.dentalvibe.com/wp-content/uploads/2016/09/children-with-dental-phobia.jpg'
        ..phrases = {
          'sv': new SlidePhrases()
            ..paragraph =
                'Sanera avloppsrören för att undvika driftstörningar och minska riskerna för kvicksilverutsläpp'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Läs mer',
          'en': new SlidePhrases()
            ..paragraph =
                'Clean the drain pipes to avoid drift disturbances and reduce the risk of mercury emissions'
            ..link = 'https://www.skelleftea.se/Bygg%20och%20miljokontoret/Innehallssidor/Bifogat/Tandvardens_miljoguide1%20(2).pdf'
            ..button_label = 'Read more'
        }
    ];
  }

  List<Slide> data = [];
}
