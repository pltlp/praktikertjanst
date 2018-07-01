import 'dart:async';
import 'package:angular/angular.dart';

import '../models/learning_content.dart';

@Injectable()
class LearningContentService {
  Future<List<LearningContent>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }
}

List<LearningContent> mockContent = [
  new LearningContent()
    ..name = 'placeholder model'
    ..url = 'rise_example/content/index.html'
    ..description =
        'Lorem Ipsum är en utfyllnadstext från tryck- och förlagsindustrin. Lorem ipsum har varit standard ända sedan 1500-talet, när en okänd boksättare tog att antal bokstäver och blandade dem för att göra ett provexemplar av en bok. Lorem ipsum har inte bara överlevt fem århundraden, utan även övergången till elektronisk typografi utan större förändringar. Det blev allmänt känt på 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker.',
  new LearningContent()
    ..name = 'placeholder model2'
    ..url = 'rise_example/content/index.html'
    ..description =
        'Lorem Ipsum är en utfyllnadstext från tryck- och förlagsindustrin. Lorem ipsum har varit standard ända sedan 1500-talet, när en okänd boksättare tog att antal bokstäver och blandade dem för att göra ett provexemplar av en bok. Lorem ipsum har inte bara överlevt fem århundraden, utan även övergången till elektronisk typografi utan större förändringar. Det blev allmänt känt på 1960-talet i samband med lanseringen av Letraset-ark med avsnitt av Lorem Ipsum, och senare med mjukvaror som Aldus PageMaker.',
];
