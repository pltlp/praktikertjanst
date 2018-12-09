import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../../components/quiz_component/quiz_component.dart';
import '../../components/rise_component/rise_component.dart';
import '../../models/quiz.dart';
import '../../models/resource.dart';
import '../../models/rise.dart';
import '../../services/messages_service.dart';
import '../../services/question_service.dart';
import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';

@Component(
    directives: const [RiseComponent, QuizComponent, NgIf],
    providers: const [QuestionService],
    selector: 'p-resource-wrapper',
    styleUrls: const ['resource_wraper_component.css'],
    templateUrl: 'resource_wraper_component.html')
class ResourceWrapperComponent implements OnActivate {
  ResourceWrapperComponent(
      this.riseService, this.quizService, this.msg, this.questionService);
  @override
  void onActivate(RouterState previous, RouterState current) async {
    final resourceUrl = current.parameters['url'];
    try {
      riseModel = riseService.data.values.firstWhere((resource) =>
          resource.phrases[msg.currentLanguage].url == resourceUrl);
    } on StateError {}
    if (model == null) {
      try {
        quizModel = quizService.data.values.firstWhere((resource) =>
            resource.phrases[msg.currentLanguage].url == resourceUrl);

        switch (quizModel.id) {
          case 'Quiz för allmänheten':
            quizModel.questions = [
              questionService.data.qustions[msg.currentLanguage][
                  'Vad ska du göra med en tappad tand som är lagad med amalgam?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Hur påverkar framför allt metylkvicksilver, oss människor?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Vilken råvara har högst andel kvicksilver?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Hur stor del kvicksilver finns det i amalgam?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['När trädde EU:s skärpta regler kring amalgam i kraft?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Vad ska man göra av uppsamlat kvicksilver?']
            ];
            break;

          case 'Quiz för dig i tandvårdsteam':
            quizModel.questions = [
              questionService.data.qustions[msg.currentLanguage][
                  'Vad ska du göra med en tappad tand som är lagad med amalgam?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Hur påverkar framför allt metylkvicksilver, oss människor?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Vilken råvara har högst andel kvicksilver?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Hur stor del kvicksilver finns det i amalgam?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['När trädde EU:s skärpta regler kring amalgam i kraft?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Vad ska man göra av uppsamlat kvicksilver?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Hur ofta ska avlopp med diskbänksavskiljare desinficeras?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Tandvårdsmottagningen har ansvar för rutiner och skötsel av amalgamavskiljare och sugsystem. Vad ingår i det dagliga underhållet?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Vad stämmer om ansvarsfördelningen när det gäller dokumentation?']
            ];
            break;

          case 'Quiz för dig som är dentaltekniker':
            quizModel.questions = [
              questionService.data.qustions[msg.currentLanguage][
                  'Vad ska du göra med en tappad tand som är lagad med amalgam?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Mikroorganismer kan omvandla kvicksilver till en förening som kan tas upp av djur, vad heter den?'],
              questionService.data.qustions[msg.currentLanguage][
                  'Hur påverkar framför allt metylkvicksilver, oss människor?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Vilken råvara har högst andel kvicksilver?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Hur stor del kvicksilver finns det i amalgam?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['När trädde EU:s skärpta regler kring amalgam i kraft?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Vad ska man göra av uppsamlat kvicksilver?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Vad stämmer om installationen av sugslangar?'],
              questionService.data.qustions[msg.currentLanguage]
                  ['Var ska sugmotorn vara installerad?'],
            ];
            break;
        }
      } on StateError {}
    }
  }

  Resource model;
  RiseService riseService;
  QuizService quizService;
  MessagesService msg;
  final QuestionService questionService;
  Rise riseModel;
  Quiz quizModel;
}
