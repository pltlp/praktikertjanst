import 'dart:async';
import 'package:angular/angular.dart';
import '../models/question.dart';

@Injectable()
class QuestionService {
  Future<Map<String, Question>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return data = {
      'Vad ska du göra med en tappad tand som är lagad med amalgam?':
          new Question()
            ..questionData = {
              'sv': new Phrases()
                ..name =
                    'Vad ska du göra med en tappad tand som är lagad med amalgam?'
                ..options = {
                  'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen':
                      new Option()
                        ..label =
                            'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
                  'Spola ned i toaletten': new Option()
                    ..label = 'Spola ned i toaletten',
                  'Kasta i soporna': new Option()..label = 'Kasta i soporna'
                },
              'en': new Phrases()
                ..name =
                    'What should you do with a tooth that was patched using amalgam?'
                ..options = {
                  'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen':
                      new Option()
                        ..label =
                            'Ensure that it is handled as hazardous waste, eg. by leaving it at the dental clinic',
                  'Spola ned i toaletten': new Option()
                    ..label = 'Flush it down the toilet',
                  'Kasta i soporna': new Option()..label = 'Throw it away'
                }
            },
      'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?':
          new Question()
            ..questionData = {
              'sv': new Phrases()
                ..name =
                    'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'
                ..options = {
                  'Metylkvicksilver': new Option()..label = 'Metylkvicksilver',
                  'Kvicksilverhydrat': new Option()
                    ..label = 'Kvicksilverhydrat',
                  'Nukleinkvicksilver': new Option()
                    ..label = 'Nukleinkvicksilver'
                },
              'en': new Phrases()
                ..name =
                    'Microorganisms can convert mercury into a compound that can be absorbed by animals, what is it called?'
                ..options = {
                  'Metylkvicksilver': new Option()..label = 'Methylmercury',
                  'Kvicksilverhydrat': new Option()..label = 'Mercury hydrate',
                  'Nukleinkvicksilver': new Option()..label = 'Nuclear mercury',
                }
            },
      'Hur påverkar framför allt metylkvicksilver, oss människor?':
          new Question()
            ..questionData = {
              'sv': new Phrases()
                ..name =
                    'Hur påverkar framför allt metylkvicksilver, oss människor?'
                ..options = {
                  'Det kan skada nervsystemet': new Option()
                    ..label = 'Det kan skada nervsystemet',
                  'Det har en kvävande effekt': new Option()
                    ..label = 'Det har en kvävande effekt',
                  'Det är inte farligt för människor': new Option()
                    ..label = 'Det är inte farligt för människor'
                },
              'en': new Phrases()
                ..name = 'How does methyl mercury affect us?'
                ..options = {
                  'Det kan skada nervsystemet': new Option()
                    ..label = 'It can damage our nervous system',
                  'Det har en kvävande effekt': new Option()
                    ..label = 'It has a suffocating effect',
                  'Det är inte farligt för människor': new Option()
                    ..label = 'It is not dangerous to humans',
                }
            }
    };
  }

  Map<String, Question> data = {};
}
