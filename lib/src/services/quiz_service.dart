import 'dart:async';
import 'package:angular/angular.dart';
import '../models/quiz.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../services/question_service.dart';
import '../services/resource_service.dart';

@Injectable()
class QuizService extends ResourceService<Quiz> {
  QuizService(this.questionService) {
    questionService.fetchAll();
  }
  @override
  Future<Map<String, Quiz>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Quiz för allmänheten': new Quiz()
        ..questions = []
        ..minScore = 0.8
        ..id = 'Quiz för allmänheten'
        ..icon = 'quiz'
        ..img_url = 'pics/courseroom_for_curious.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för allmänheten'
          ..description =
              'Test på dina kunskaper utifrån ett allmänt perspektiv.'
          ..url = 'quiz-for-allmanheten'
          ..estimated_time_for_completion = 'Ca 2 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for the public'
          ..description = 'Test your knowledge from a general perspective.'
          ..url = 'quiz-for-the-public'
          ..estimated_time_for_completion = 'Ca 2 min')
        ..type = ResourceType.quiz,



      'Quiz för dig i tandvårdsteam': new Quiz()
        ..questions = []
        ..minScore = 0.9
        ..id = 'Quiz för dig i tandvårdsteam'
        ..icon = 'quiz'
        ..img_url = 'pics/responsibility.jpg'
        ..type = ResourceType.quiz
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för dig i tandvårdsteam'
          ..url = 'quiz-for-tandvardsteam'
          ..description =
              'Test på dina kunskaper utifrån tandvårdsteamets perspektiv.'
          ..estimated_time_for_completion = 'Ca 3 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for dental care team personnel'
          ..url = 'quiz-for-dental-care-team-personnel'
          ..description =
              'Test your knowledge from the dental care team’s perspective.'
          ..estimated_time_for_completion = 'Ca 3 min')
        ..type = ResourceType.quiz,


      'Quiz för dig som är servicetekniker': new Quiz()
        ..questions = []
        ..minScore = 0.9
        ..id = 'Quiz för dig som är servicetekniker'
        ..icon = 'quiz'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..type = ResourceType.quiz
        ..phrases['sv'] = (new Phrases()
          ..name = 'Quiz för dig som är servicetekniker'
          ..url = 'quiz-for-servicetekniker'
          ..description =
              'Test på dina kunskaper utifrån serviceteknikerns perspektiv.'
          ..estimated_time_for_completion = 'Ca 3 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'Quiz for service technicians'
          ..url =  'quiz-for-service-technicians'
          ..description =
              'Test your knowledge from the service technician’s perspective.'
          ..estimated_time_for_completion = 'Ca 3 min')
        ..type = ResourceType.quiz
    };

    return data;
  }

  QuestionService questionService;
}
