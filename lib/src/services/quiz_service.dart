import 'dart:async';
import 'package:angular/angular.dart';
import '../models/quiz.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../services/resource_service.dart';

@Injectable()
class QuizService extends ResourceService<Quiz> {
  @override
  Future<Map<String, Quiz>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Quiz för allmänheten': new Quiz([
        new Question(
            'Vad ska du göra med en tappad tand som är lagd med amalgam?', [
          new Option(
              'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
              'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
              score: 1),
          new Option('Kasta i soporna', 'Kasta i soporna', score: 0),
          new Option('Spola ned i toaletten', 'Spola ned i toaletten',
              score: 0),
        ]),
        new Question('Hur påverkar framför allt metylkvicksilver, oss människor?', [
          new Option('Det kan skada nervsystemet', 'Det kan skada nervsystemet',
              score: 1),
          new Option('Det har en kvävande effekt', 'Det har en kvävande effekt',
              score: 0),
          new Option('Det är inte farligt för människor',
              'Det är inte farligt för människor',
              score: 0),
        ]),
        new Question(
            'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den? ',
            [
              new Option('Metylkvicksilver.', 'Metylkvicksilver', score: 1),
              new Option('Kvicksilverhydrat', 'Kvicksilverhydrat', score: 0),
              new Option('Nukleinkvicksilver', 'Nukleinkvicksilver', score: 0),
            ]),
        new Question('Vilken råvara har högst andel kvicksilver?', [
          new Option('Fisk .', 'Fisk ', score: 1),
          new Option('Fläskkött', 'Fläskkött', score: 0),
          new Option('Mejeriprodukter', 'Mejeriprodukter', score: 0),
        ]),
        new Question('Hur stor del kvicksilver finns det i amalgam? ', [
          new Option('Ca 50% .', 'Ca 50% ', score: 1),
          new Option('Ca 20%', 'Ca 20%', score: 0),
          new Option('Ca 5%', 'Ca 5%', score: 0),
        ]),
        new Question('När trädde EU:s skärpta regler kring amalgam i kraft? ', [
          new Option('2017 .', '2017 ', score: 1),
          new Option('2013', '2013', score: 0),
          new Option('2019', '2019', score: 0),
        ]),
        new Question('Vad ska man göra av uppsamlat kvicksilver?', [
          new Option('Slutförvara det  .', 'Slutförvara det  ', score: 1),
          new Option('Förstöra det', 'Förstöra det', score: 0),
          new Option('Dumpa det i havet', 'Dumpa det i havet', score: 0),
        ]),
      ], 0.8)
        ..id = 'Quiz för allmänheten'
        ..icon = 'quiz'
        ..img_url = 'pics/courseroom_for_curious.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för allmänheten'
          ..description =
              'Test på dina kunskaper utifrån ett allmänt perspektiv.'
          ..url = 'quiz-for-allmanheten')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for the public'
          ..description = 'Test your knowledge from a general perspective.'
          ..url = 'quiz-for-the-public')
        ..type = ResourceType.quiz,
      'Quiz för dig i tandvårdsteam': new Quiz([
        new Question(
            'Vad ska du göra med en tappad tand som är lagd med amalgam?', [
          new Option(
              'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
              'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
              score: 1),
          new Option('Kasta i soporna', 'Kasta i soporna', score: 0),
          new Option('Spola ned i toaletten', 'Spola ned i toaletten',
              score: 0),
        ]),
        new Question('Hur påverkar framför allt metylkvicksilver, oss människor?', [
          new Option('Det kan skada nervsystemet', 'Det kan skada nervsystemet',
              score: 1),
          new Option('Det har en kvävande effekt', 'Det har en kvävande effekt',
              score: 0),
          new Option('Det är inte farligt för människor',
              'Det är inte farligt för människor',
              score: 0),
        ]),
        new Question(
            'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den? ',
            [
              new Option('Metylkvicksilver.', 'Metylkvicksilver', score: 1),
              new Option('Kvicksilverhydrat', 'Kvicksilverhydrat', score: 0),
              new Option('Nukleinkvicksilver', 'Nukleinkvicksilver', score: 0),
            ]),
        new Question('Vilken råvara har högst andel kvicksilver?', [
          new Option('Fisk .', 'Fisk ', score: 1),
          new Option('Fläskkött', 'Fläskkött', score: 0),
          new Option('Mejeriprodukter', 'Mejeriprodukter', score: 0),
        ]),
        new Question('Hur stor del kvicksilver finns det i amalgam? ', [
          new Option('Ca 50% .', 'Ca 50% ', score: 1),
          new Option('Ca 20%', 'Ca 20%', score: 0),
          new Option('Ca 5%', 'Ca 5%', score: 0),
        ]),
        new Question('När trädde EU:s skärpta regler kring amalgam i kraft? ', [
          new Option('2017 .', '2017 ', score: 1),
          new Option('2013', '2013', score: 0),
          new Option('2019', '2019', score: 0),
        ]),
        new Question('Vad ska man göra av uppsamlat kvicksilver?', [
          new Option('Slutförvara det  .', 'Slutförvara det  ', score: 1),
          new Option('Förstöra det', 'Förstöra det', score: 0),
          new Option('Dumpa det i havet', 'Dumpa det i havet', score: 0),
        ]),
        new Question(
            'Hur ofta ska avlopp med diskbänksavskiljare desinficeras?', [
          new Option('Varje arbetsdag', 'Varje arbetsdag', score: 1),
          new Option('En gång per månad', 'En gång per månad', score: 0),
          new Option('En gång per kvartal', 'En gång per kvartal', score: 0),
        ]),
        new Question(
            'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?',
            [
              new Option(
                  'Tömning och sköljning av grovsil/salivsug eller partikelfälla.',
                  'Tömning och sköljning av grovsil/salivsug eller partikelfälla.',
                  score: 1),
              new Option(
                  'Kontroll av fyllnadsgraden i amalgamavskiljarens behållare',
                  'Kontroll av fyllnadsgraden i amalgamavskiljarens behållare',
                  score: 0),
              new Option('Tömning och rengöring av bufferttank',
                  'Tömning och rengöring av bufferttank',
                  score: 0),
            ]),
        new Question(
            'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?',
            [
              new Option(
                  'Tandvårdsmottagningen ansvarar för protokoll över funktionskontroll och avvikelser vid hanteringen av amalgamavskiljaren och sugsystemet',
                  'Tandvårdsmottagningen ansvarar för protokoll över funktionskontroll och avvikelser vid hanteringen av amalgamavskiljaren och sugsystemet',
                  score: 1),
              new Option(
                  'Fastighetsägaren ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem. ',
                  'Fastighetsägaren ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem. ',
                  score: 0),
              new Option(
                  'Dental- och servicetekniker ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.  ',
                  'Dental- och servicetekniker ansvarar för all dokumentation rörande amalgamavskiljare och sugsystem.',
                  score: 0),
            ])
      ], 0.8)
        ..icon = 'quiz'
        ..id = 'Quiz för dig i tandvårdsteam'
        ..img_url = 'pics/responsibility.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för dig i tandvårdsteam'
          ..url = 'quiz-for-dig-i-tandvardsteam'
          ..description =
              'Test på dina kunskaper utifrån tandvårdsteamets perspektiv.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for you in a dental team'
          ..url = 'quiz-for-you-in-a-dental-team'
          ..description =
              'Test your knowledge from the dental teams perspective.')
        ..type = ResourceType.quiz,
      'Quiz för dig som är dentaltekniker': new Quiz([
        new Question(
            'Vad ska du göra med en tappad tand som är lagd med amalgam?', [
          new Option(
              'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
              'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
              score: 1),
          new Option('Kasta i soporna', 'Kasta i soporna', score: 0),
          new Option('Spola ned i toaletten', 'Spola ned i toaletten',
              score: 0),
        ]),
        new Question('Hur påverkar framför allt metylkvicksilver, oss människor?', [
          new Option('Det kan skada nervsystemet', 'Det kan skada nervsystemet',
              score: 1),
          new Option('Det har en kvävande effekt', 'Det har en kvävande effekt',
              score: 0),
          new Option('Det är inte farligt för människor',
              'Det är inte farligt för människor',
              score: 0),
        ]),
        new Question(
            'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den? ',
            [
              new Option('Metylkvicksilver.', 'Metylkvicksilver', score: 1),
              new Option('Kvicksilverhydrat', 'Kvicksilverhydrat', score: 0),
              new Option('Nukleinkvicksilver', 'Nukleinkvicksilver', score: 0),
            ]),
        new Question('Vilken råvara har högst andel kvicksilver?', [
          new Option('Fisk .', 'Fisk ', score: 1),
          new Option('Fläskkött', 'Fläskkött', score: 0),
          new Option('Mejeriprodukter', 'Mejeriprodukter', score: 0),
        ]),
        new Question('Hur stor del kvicksilver finns det i amalgam? ', [
          new Option('Ca 50% .', 'Ca 50% ', score: 1),
          new Option('Ca 20%', 'Ca 20%', score: 0),
          new Option('Ca 5%', 'Ca 5%', score: 0),
        ]),
        new Question('När trädde EU:s skärpta regler kring amalgam i kraft? ', [
          new Option('2017 .', '2017 ', score: 1),
          new Option('2013', '2013', score: 0),
          new Option('2019', '2019', score: 0),
        ]),
        new Question('Vad ska man göra av uppsamlat kvicksilver?', [
          new Option('Slutförvara det  .', 'Slutförvara det  ', score: 1),
          new Option('Förstöra det', 'Förstöra det', score: 0),
          new Option('Dumpa det i havet', 'Dumpa det i havet', score: 0),
        ]),
        new Question('Vad stämmer om installationen av sugslangar?', [
          new Option('Slangarnas vinklar bör vara högst 45 grader.',
              'Slangarnas vinklar bör vara högst 45 grader',
              score: 1),
          new Option('Sugslangarna från uniten till golven bör limmas noga',
              'Sugslangarna från uniten till golven bör limmas noga',
              score: 0),
          new Option('Sugslangarna bör vara gjorda av kolfiber',
              'Sugslangarna bör vara gjorda av kolfiber',
              score: 0),
        ]),
        new Question('Var ska sugmotorn vara installerad?', [
          new Option('I ett separat sugrum avskilt från människor',
              'I ett separat sugrum avskilt från människor',
              score: 1),
          new Option(
              'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet',
              'Centralt på mottagningen, så långt det går mellan de behandlingsstolar som ingår i systemet',
              score: 0),
          new Option('Det spelar ingen större roll, där det får plats',
              'Det spelar ingen större roll, där det får plats',
              score: 0),
        ]),
        new Question(
            'Vilken funktion i människokroppen påverkas i första hand av kvicksilver?',
            [
              new Option('Nervsystemet', 'Nervsystemet', score: 1),
              new Option('Lungkapaciteten', 'Lungkapaciteten', score: 0),
              new Option('Hjärtat', 'Hjärtat', score: 0),
            ])
      ], 0.8)
        ..icon = 'quiz'
        ..id = 'Quiz för dig som är dentaltekniker'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för dig som är dentaltekniker'
          ..url = 'quiz-for-dig-som-dentaltekniker'
          ..description =
              'Test på dina kunskaper utifrån dentalteknikerns perspektiv.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for you as a dental technician'
          ..url = 'quiz-for-you-as-a-dental-technician'
          ..description =
              'Test your knowledge based on the dental technicians perspective')
        ..type = ResourceType.quiz
    };

    return data;
  }
}
