import 'dart:async';
import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
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
      'Quiz för allmänheten': new Quiz()
        ..icon = 'pool'
        ..id = 'Quiz för allmänheten'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för dig som är nyfiken'
          ..description =
              'Test på dina kunskaper utifrån ett allmänt perspektiv.'
          ..url = 'quiz-for-allmanheten')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for the public'
          ..description = 'Test your knowledge from a general perspective.'
          ..url = 'quiz-for-the-public')
        ..data = {
          'sv': new FoQuizModel([
            new FoQuestionModel(
                'Vad ska du göra med en tappad tand som är lagd med amalgam?', [
              new FoOptionModel(
                  'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
                  'Säkerställ att den hanteras som farligt avfall, t.ex. genom att lämna den till tandvårdsmottagningen',
                  score: 1),
              new FoOptionModel(
                  'Kasta i soporna',
                  'Kasta i soporna',
                  score: 0),
              new FoOptionModel(
                  'Spola ned i toaletten',
                  'Spola ned i toaletten',
                  score: 0)
            ])
          ])
        }
        ..type = ResourceType.quiz,
      'Quiz för dig i tandvårdsteam': new Quiz()
        ..icon = 'gavel'
        ..id = 'Quiz för dig i tandvårdsteam'
        ..img_url = 'pics/quicksilver_management.jpg'
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
      'Quiz för dig som dentaltekniker': new Quiz()
        ..icon = 'gavel'
        ..id = 'Quiz för dig som dentaltekniker'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för dig som dentaltekniker'
          ..url = 'quiz-for-dig-som-dentaltekniker'
          ..description =
              'Test på dina kunskaper utifrån dentalteknikerns perspektiv.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for you as a dental technician'
          ..url = 'quiz-for-you-as-a-dental-technician'
          ..description =
              'Test your knowledge based on the dental technicians perspective')
        ..type = ResourceType.quiz,
      'Quiz för dig på miljöserviceföretag': new Quiz() /*ta bort */
        ..icon = 'gavel'
        ..id = 'Quiz för dig på miljöserviceföretag'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för dig på miljöserviceföretag'
          ..url = 'quiz-for-dig-pa-miljoserviceforetag'
          ..description =
              'Test på dina kunskaper utifrån miljöserviceföretagets perspektiv.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for you at environmental service companies'
          ..url = 'quiz-for-you-at-environmental-service-companies'
          ..description =
              'Test your knowledge based on the environmental services company'
              's perspective.')
        ..type = ResourceType.quiz,
    };

    return data;
  }
}
