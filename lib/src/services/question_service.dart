import 'dart:async';
import 'package:angular/angular.dart';
import '../models/question_data.dart';
import '../models/quiz.dart';

@Injectable()
class QuestionService {
  Future<QuestionData> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return data = new QuestionData()
      ..qustions = {
        'sv': {
          'Vad ska du göra med en tappad tand som är lagad med amalgam?':
              new Question()
                ..value =
                    'Vad ska du göra med en tappad tand som är lagad med amalgam?'
                ..label =
                    'Vad ska du göra med en tappad tand som är lagad med amalgam?'
                ..options = [
                  new Option()
                    ..value =
                        'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen'
                    ..label =
                        'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen'
                    ..score = 1,
                  new Option()
                    ..value = 'Spola ned i toaletten'
                    ..label = 'Spola ned i toaletten'
                    ..score = 0,
                  new Option()
                    ..value = 'Kasta i soporna'
                    ..label = 'Kasta i soporna'
                    ..score = 0
                ],
          'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
              new Question()
                ..value =
                    'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'
                ..label =
                    'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'
                ..options = [
                  new Option()
                    ..label = 'Metylkvicksilver'
                    ..value = 'Metylkvicksilver'
                    ..score = 1,
                  new Option()
                    ..label = 'Kvicksilverhydrat'
                    ..value = 'Kvicksilverhydrat'
                    ..score = 0,
                  new Option()
                    ..label = 'Nukleinkvicksilver'
                    ..value = 'Nukleinkvicksilver'
                    ..score = 0
                ],
          'Hur påverkar framför allt metylkvicksilver, oss människor?':
              new Question()
                ..label =
                    'Hur påverkar framför allt metylkvicksilver, oss människor?'
                ..value =
                    'Hur påverkar framför allt metylkvicksilver, oss människor?'
                ..options = [
                  new Option()
                    ..label = 'Det kan skada nervsystemet'
                    ..value = 'Det kan skada nervsystemet'
                    ..score = 1,
                  new Option()
                    ..label = 'Det har en kvävande effekt'
                    ..value = 'Det har en kvävande effekt'
                    ..score = 0,
                  new Option()
                    ..label = 'Det är inte farligt för människor'
                    ..value = 'Det är inte farligt för människor'
                    ..score = 0,
                ],
          'Vilken råvara har högst andel kvicksilver?': new Question()
            ..label = 'Vilken råvara har högst andel kvicksilver?'
            ..value = 'Vilken råvara har högst andel kvicksilver?'
            ..options = [
              new Option()
                ..label = 'Fisk'
                ..value = 'Fisk'
                ..score = 1,
              new Option()
                ..label = 'Fläskkött'
                ..value = 'Fläskkött'
                ..score = 0,
              new Option()
                ..label = 'Mejeriprodukter'
                ..value = 'Mejeriprodukter'
                ..score = 0,
            ],
          'Hur stor del kvicksilver finns det i amalgam?': new Question()
            ..label = 'Hur stor del kvicksilver finns det i amalgam?'
            ..value = 'Hur stor del kvicksilver finns det i amalgam?'
            ..options = [
              new Option()
                ..label = 'Ca 50%'
                ..value = 'Ca 50%'
                ..score = 1,
              new Option()
                ..label = 'Ca 20%'
                ..value = 'Ca 20%'
                ..score = 0,
              new Option()
                ..label = 'Ca 5%'
                ..value = 'Ca 5%'
                ..score = 0
            ],
          'När trädde EU:s skärpta regler kring amalgam i kraft?':
              new Question()
                ..label =
                    'När trädde EU:s skärpta regler kring amalgam i kraft?'
                ..value =
                    'När trädde EU:s skärpta regler kring amalgam i kraft?'
                ..options = [
                  new Option()
                    ..label = '2018'
                    ..value = '2018'
                    ..score = 1,
                  new Option()
                    ..label = '2013'
                    ..value = '2013'
                    ..score = 0,
                  new Option()
                    ..label = '2019'
                    ..value = '2019'
                    ..score = 0,
                ],
          'Vad ska man göra av uppsamlat kvicksilver?': new Question()
            ..label = 'Vad ska man göra av uppsamlat kvicksilver?'
            ..value = 'Vad ska man göra av uppsamlat kvicksilver?'
            ..options = [
              new Option()
                ..label = 'Slutförvara det'
                ..value = 'Slutförvara det'
                ..score = 1,
              new Option()
                ..label = 'Förstöra det'
                ..value = 'Förstöra det'
                ..score = 0,
              new Option()
                ..label = 'Dumpa det i havet'
                ..value = 'Dumpa det i havet'
                ..score = 0
            ],
          'Var ska sugmotorn vara installerad?': new Question()
            ..label = 'Var ska sugmotorn vara installerad?'
            ..value = 'Var ska sugmotorn vara installerad?'
            ..options = [
              new Option()
                ..label = 'I ett separat sugrum avskilt från människor. '
                ..value = 'I ett separat sugrum avskilt från människor. '
                ..score = 1,
              new Option()
                ..label =
                    'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet. '
                ..value =
                    'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet. '
                ..score = 0,
              new Option()
                ..label = 'Det spelar ingen större roll, där det får plats. '
                ..value = 'Det spelar ingen större roll, där det får plats. '
                ..score = 0
            ],
          'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?':
              new Question()
                ..label =
                    'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?'
                ..value =
                    'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?'
                ..options = [
                  new Option()
                    ..label = 'Varje arbetsdag'
                    ..value = 'Varje arbetsdag'
                    ..score = 1,
                  new Option()
                    ..label = 'En gång per månad'
                    ..value = 'En gång per månad'
                    ..score = 0,
                  new Option()
                    ..label = 'En gång per kvartal'
                    ..value = 'En gång per kvartal'
                    ..score = 0
                ],
          'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?':
              new Question()
                ..label =
                    'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?'
                ..value =
                    'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?'
                ..options = [
                  new Option()
                    ..value =
                        'Tömning och sköljning av grovsil/salivsug eller partikelfälla.'
                    ..label =
                        'Tömning och sköljning av grovsil/salivsug eller partikelfälla.'
                    ..score = 1,
                  new Option()
                    ..label =
                        'Kontroll av fyllnadsgraden i amalgamavskiljarens behållare'
                    ..value =
                        'Kontroll av fyllnadsgraden i amalgamavskiljarens behållare'
                    ..score = 0,
                  new Option()
                    ..label = 'Tömning och rengöring av bufferttank'
                    ..value = 'Tömning och rengöring av bufferttank'
                    ..score = 0
                ],
          'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?':
              new Question()
                ..label =
                    'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?'
                ..value =
                    'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?'
                ..options = [
                  new Option()
                    ..label =
                        'Tandvårdsmottagningen ansvarar för protokoll över funktionskontroll och avvikelser vid hanteringen av amalgamavskiljaren och sugsystemet'
                    ..value =
                        'Tandvårdsmottagningen ansvarar för protokoll över funktionskontroll och avvikelser vid hanteringen av amalgamavskiljaren och sugsystemet'
                    ..score = 1,
                  new Option()
                    ..label =
                        'Fastighetsägaren ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..value =
                        'Fastighetsägaren ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..score = 0,
                  new Option()
                    ..label =
                        'Dental- och servicetekniker ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..value =
                        'Dental- och servicetekniker ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.'
                    ..score = 0
                ],
          'Vad stämmer om installationen av sugslangar?': new Question()
            ..label = 'Vad stämmer om installationen av sugslangar?'
            ..value = 'Vad stämmer om installationen av sugslangar?'
            ..options = [
              new Option()
                ..label = 'Slangarnas vinklar bör vara högst 45 grader.'
                ..value = 'Slangarnas vinklar bör vara högst 45 grader.'
                ..score = 1,
              new Option()
                ..label = 'Sugslangarna från uniten till golven bör limmas noga'
                ..value = 'Sugslangarna från uniten till golven bör limmas noga'
                ..score = 0,
              new Option()
                ..label = 'Sugslangarna bör vara gjorda av kolfiber'
                ..value = 'Sugslangarna bör vara gjorda av kolfiber'
                ..score = 0
            ],
        },
        'en': {
          'Vad ska du göra med en tappad tand som är lagad med amalgam?':
              new Question()
                ..value =
                    'What should you do with a tooth that was patched using amalgam?'
                ..label =
                    'What should you do with a tooth that was patched using amalgam?'
                ..options = [
                  new Option()
                    ..value =
                        'Ensure that it is handled as hazardous waste, eg. by leaving it at the dental clinic'
                    ..label =
                        'Ensure that it is handled as hazardous waste, eg. by leaving it at the dental clinic'
                    ..score = 1,
                  new Option()
                    ..value = 'Flush it down the toilet'
                    ..label = 'Flush it down the toilet'
                    ..score = 0,
                  new Option()
                    ..value = 'Throw it away'
                    ..label = 'Throw it away'
                    ..score = 0
                ],
          'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
              new Question()
                ..value =
                    'Microorganisms can convert mercury into a compound that can be absorbed by animals, what is it called?'
                ..label =
                    'Microorganisms can convert mercury into a compound that can be absorbed by animals, what is it called?'
                ..options = [
                  new Option()
                    ..value = 'Methylmercury'
                    ..label = 'Methylmercury'
                    ..score = 1,
                  new Option()
                    ..value = 'Mercury hydrate'
                    ..label = 'Mercury hydrate'
                    ..score = 0,
                  new Option()
                    ..value = 'Nuclear mercury'
                    ..label = 'Nuclear mercury'
                    ..score = 0
                ],
          'Hur påverkar framför allt metylkvicksilver, oss människor?':
              new Question()
                ..label = 'How does methyl mercury affect us?'
                ..value = 'How does methyl mercury affect us?'
                ..options = [
                  new Option()
                    ..label = 'It can damage our nervous system'
                    ..value = 'It can damage our nervous system'
                    ..score = 1,
                  new Option()
                    ..label = 'It has a suffocating effect'
                    ..value = 'It has a suffocating effect'
                    ..score = 0,
                  new Option()
                    ..label = 'It is not dangerous to humans'
                    ..value = 'It is not dangerous to humans'
                    ..score = 0,
                ],
          'Vilken råvara har högst andel kvicksilver?': new Question()
            ..label = 'Which commodity has the highest proportion of mercury?'
            ..value = 'Which commodity has the highest proportion of mercury?'
            ..options = [
              new Option()
                ..label = 'Fish'
                ..value = 'Fish'
                ..score = 1,
              new Option()
                ..label = 'Pork'
                ..value = 'Pork'
                ..score = 0,
              new Option()
                ..label = 'Dairy products'
                ..value = 'Dairy products'
                ..score = 0,
            ],
          'Hur stor del kvicksilver finns det i amalgam?': new Question()
            ..label = 'How much mercury is there in amalgam?'
            ..value = 'How much mercury is there in amalgam?'
            ..options = [
              new Option()
                ..label = 'Ca 50%'
                ..value = 'Ca 50%'
                ..score = 1,
              new Option()
                ..label = 'Ca 20%'
                ..value = 'Ca 20%'
                ..score = 0,
              new Option()
                ..label = 'Ca 5%'
                ..value = 'Ca 5%'
                ..score = 0
            ],
          'När trädde EU:s skärpta regler kring amalgam i kraft?':
              new Question()
                ..label = 'When did the EU'
                    's tight regulations about amalgam come into effect?'
                ..value = 'When did the EU'
                    's tight regulations about amalgam come into effect?'
                ..options = [
                  new Option()
                    ..label = '2018'
                    ..value = '2018'
                    ..score = 1,
                  new Option()
                    ..label = '2013'
                    ..value = '2013'
                    ..score = 0,
                  new Option()
                    ..label = '2019'
                    ..value = '2019'
                    ..score = 0,
                ],
          'Vad ska man göra av uppsamlat kvicksilver?': new Question()
            ..label = 'How  should you handle collected mercury?'
            ..value = 'How  should you handle collected mercury?'
            ..options = [
              new Option()
                ..label = 'Store it'
                ..value = 'Store it'
                ..score = 1,
              new Option()
                ..label = 'Destroy it'
                ..value = 'Destroy it'
                ..score = 0,
              new Option()
                ..label = 'Dump it into the ocean'
                ..value = 'Dump it into the ocean'
                ..score = 0
            ],
          'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?':
              new Question()
                ..label =
                    'How often should sewers with sink separators be disinfected?'
                ..value =
                    'How often should sewers with sink separators be disinfected?'
                ..options = [
                  new Option()
                    ..label = 'Every working day'
                    ..value = 'Every working day'
                    ..score = 1,
                  new Option()
                    ..label = 'Once a month'
                    ..value = 'Once a month'
                    ..score = 0,
                  new Option()
                    ..label = 'Each quoreter'
                    ..value = 'Each quoreter'
                    ..score = 0
                ],
          'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?':
              new Question()
                ..label =
                    'Dental care professionals are responsible for routines and care of amalgam separators and suction systems. What is included in daily maintenance?'
                ..value =
                    'Dental care professionals are responsible for routines and care of amalgam separators and suction systems. What is included in daily maintenance?'
                ..options = [
                  new Option()
                    ..value =
                        'Drainage and rinsing of coarse sieve / saliva suction system or particle trap.'
                    ..label =
                        'Drainage and rinsing of coarse sieve / saliva suction system or particle trap.'
                    ..score = 1,
                  new Option()
                    ..label =
                        'Checks to see how full amalgam separator container is'
                    ..value =
                        'Checks to see how full amalgam separator container is'
                    ..score = 0,
                  new Option()
                    ..label = 'Drainage and cleaning of buffer tank'
                    ..value = 'Drainage and cleaning of buffer tank'
                    ..score = 0
                ],
          'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?':
              new Question()
                ..label =
                    'What is true concerning how responsibility for documentation is shared?'
                ..value =
                    'What is true concerning how responsibility for documentation is shared?'
                ..options = [
                  new Option()
                    ..label =
                        'Dental clinic is responsible for protocols on function check and deviations in handling of the amalgam separator and suction system'
                    ..value =
                        'Dental clinic is responsible for protocols on function check and deviations in handling of the amalgam separator and suction system'
                    ..score = 1,
                  new Option()
                    ..label =
                        'The property owner is responsible for all documentation regarding amalgam separators and suction systems.'
                    ..value =
                        'The property owner is responsible for all documentation regarding amalgam separators and suction systems.'
                    ..score = 0,
                  new Option()
                    ..label =
                        'Dental and service technicians are responsible for all documentation regarding amalgam separators and suction systems.'
                    ..value =
                        'Dental and service technicians are responsible for all documentation regarding amalgam separators and suction systems.'
                    ..score = 0
                ],
          'Vad stämmer om installationen av sugslangar?': new Question()
            ..label = 'What is true about the installation of suction hoses?'
            ..value = 'What is true about the installation of suction hoses?'
            ..options = [
              new Option()
                ..label = 'The hose angles should not exceed 45 degrees.'
                ..value = 'The hose angles should not exceed 45 degrees.'
                ..score = 1,
              new Option()
                ..label =
                    'The suction hose from the unit to the floor should be glued carefully'
                ..value =
                    'The suction hose from the unit to the floor should be glued carefully'
                ..score = 0,
              new Option()
                ..label = 'The suction hoses should be made of carbon fiber.'
                ..value = 'The suction hoses should be made of carbon fiber.'
                ..score = 0
            ],
          'Var ska sugmotorn vara installerad?': new Question()
            ..label = 'Where should the suction engine be installed?'
            ..value = 'Where should the suction engine be installed?'
            ..options = [
              new Option()
                ..label = 'In a separate suction room separate from people.'
                ..value = 'In a separate suction room separate from people.'
                ..score = 1,
              new Option()
                ..label =
                    'Central at the reception as far as possible between the treatment chairs and the system.'
                ..value =
                    'Central at the reception as far as possible between the treatment chairs and the system.'
                ..score = 0,
              new Option()
                ..label = 'It does not matter where evere there is room'
                ..value = 'It does not matter where evere there is room.'
                ..score = 0
            ],
        }
      };
  }

  QuestionData data;
}
