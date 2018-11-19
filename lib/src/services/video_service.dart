import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../models/video.dart';
import 'resource_service.dart';

@Injectable()
class VideoService extends ResourceService<Video> {
  @override
  Future<Map<String, Video>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Så upplevde vi saneringen': new Video()
        ..icon = 'video'
        ..id = 'Så upplevde vi saneringen'
        ..img_url = 'https://i.vimeocdn.com/video/738185927.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så upplevde vi saneringen'
          ..url = 'sanering'
          ..description =
              'Susann Balzar reflekterar kring saneringen på mottagningen.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Good examples - remidiation'
          ..url = 'remidiation'
          ..description =
              'Susann Balzar reflects on the remediation of her dental practice.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921184?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299921184?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 12 s',
      'Så minimerar vi utsläppen': new Video()
        ..icon = 'video'
        ..id = 'Så minimerar vi utsläppen'
        ..img_url = 'https://i.vimeocdn.com/video/738458197.webp?mw=1080&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så minimerar vi utsläppen'
          ..url = 'mottagningen'
          ..description =
              'Claes Karlsson berättar om skötselarbetet på mottagningen.')
        ..phrases['en'] = (new Phrases()
          ..name = 'How we work at our dentist practice'
          ..url = 'patient-reception'
          ..description =
              'Claes Karlsson talks about the amalgam management at his reception.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920998?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299920998?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 12 s',
      'Så går en installation till': new Video()
        ..icon = 'video'
        ..id = 'Så går en installation till'
        ..img_url = 'https://i.vimeocdn.com/video/738188721.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så går en installation till'
          ..url = 'installation'
          ..description =
              'Anders och Patrik berättar om installationen av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'This video explains the installation process'
          ..url = 'installation'
          ..description =
              'Anders and Patrik talk about the installation of amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920834?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299920834?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 35 s',
      'Att lämna amalgam bakom sig': new Video()
        ..icon = 'video'
        ..id = 'Att lämna amalgam bakom sig'
        ..img_url = 'https://i.vimeocdn.com/video/738185078.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att lämna amalgam bakom sig'
          ..url = 'lamna-amalgam'
          ..description =
              'Claes Karlsson ger sitt perspektiv på hur branschen hanterade amalgamförbudet som trädde i kraft 2009 i Sverige. ')
        ..phrases['en'] = (new Phrases()
          ..name = 'How to stop using quck silver amalgam'
          ..url = 'leave-amalgam'
          ..description =
              'Claes Karlsson ger sitt perspektiv på hur branschen hanterade amalgamförbudet som trädde i kraft 2009 i Sverige.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908976?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299908976?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 1s',
      'Rutiner vid patientbehandling': new Video()
        ..icon = 'video'
        ..id = 'Rutiner vid patientbehandling'
        ..img_url = 'https://i.vimeocdn.com/video/738187424.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Rutiner vid patientbehandling'
          ..url = 'rutiner'
          ..description =
              'Så ser rutinerna kopplat till amalgamhantering, vid patientbesök på mottagningen ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Routines during the patient treatment'
          ..url = 'routines'
          ..description =
              'These are routines associated with amalgam management.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910154?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910154?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '42 s',
      'Skötsel av amalgamavskiljare': new Video()
        ..icon = 'video'
        ..id = 'Skötsel av amalgamavskiljare'
        ..img_url = 'https://i.vimeocdn.com/video/738186357.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Skötsel av amalgamavskiljare'
          ..url = 'skotsel-av-amalgamavskiljare'
          ..description =
              'Så ser rutinerna för skötsel av amalgamavskiljare och sugsystem ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'More seldom managment of amalgam separators'
          ..url = 'care-of-amalgam-separators'
          ..description =
              'These are procedures for handling amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910768?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910768?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 10 s',
      'Att tänka på vid installation': new Video()
        ..icon = 'video'
        ..id = 'Att tänka på vid installation'
        ..img_url = 'https://i.vimeocdn.com/video/738187928.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att tänka på vid installation'
          ..url = 'tips-for-installation'
          ..description =
              'Tips för installation av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'What to keep in mind during installation process'
          ..url = 'tips-for-installation'
          ..description =
              'Tips when installing amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909211?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909211?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 16 s',
      'Byte av amalgamavskiljare': new Video()
        ..icon = 'video'
        ..id = 'Byte av amalgamavskiljare'
        ..img_url = 'https://i.vimeocdn.com/video/738187667.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Byte av amalgamavskiljare'
          ..url = 'byte-av-amalgamavskiljare'
          ..description =
              'Så byts amalgamavskiljare i våta och torra sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Replacement of amalgam separator'
          ..url = 'replacement-of-amalgam-separator'
          ..description =
              'This is how amalgam separators are replaced in wet and dry suction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909564?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909564?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 19 s',
      'Funktionskontroll': new Video()
        ..icon = 'video'
        ..id = 'Funktionskontroll'
        ..img_url = 'https://i.vimeocdn.com/video/738135448.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Funktionskontroll'
          ..url = 'funktionskontroll'
          ..description =
              'Så utför miljöserviceföretaget en funktionskontroll av amalgamavskiljare.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Function check'
          ..url = 'function-check'
          ..description =
              'This is how environmental service company performs a function check of amalgam separators.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909870?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909870?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '42 s',
      'Tömning av vattenlås': new Video()
        ..icon = 'video'
        ..id = 'Tömning av vattenlås'
        ..img_url = 'https://i.ytimg.com/vi/qV2zNWqhz60/mqdefault.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Tömning av vattenlås'
          ..url = 'tomning-av-vattenlas'
          ..description =
              'Så rengör och tömmer miljöserviceföretaget vattenlås.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Drainage of water traps'
          ..url = 'drainage-of-water-traps'
          ..description = 'This how you drain water traps')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921354?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299921354?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '23 s',
      'Slutförvaring': new Video()
        ..icon = 'video'
        ..id = 'Slutförvaring'
        ..img_url = 'https://i.vimeocdn.com/video/738186640.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Slutförvaring '
          ..url = 'slutforvaring'
          ..description = 'Så tas amalgamavfallet om hand.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Storage'
          ..url = 'storage'
          ..description = 'This is how amalgam waste is taken care of.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299911163?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299911163?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '52 s',
      'Sanering': new Video()
        ..icon = 'video'
        ..id = 'Sanering'
        ..img_url = 'https://i.vimeocdn.com/video/738187005.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Sanering '
          ..url = 'sanering'
          ..description = 'Så genomförs en sanering.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Sanitation'
          ..url = 'sanitation'
          ..description = 'Then a remediation is carried out.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910425?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910425?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 13 s',
      'Varför är skötseln så viktig?': new Video()
        ..icon = 'video'
        ..id = 'Varför är skötseln så viktig? '
        ..img_url = 'https://i.vimeocdn.com/video/738133939.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Varför är skötseln så viktig?'
          ..url = 'varfor-ar-skotseln-sa-viktig'
          ..description =
              'Dentaltekniker understryker vikten av god skötsel av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Why is care so important?'
          ..url = 'why-is-care-so-important'
          ..description =
              'Dental technicians emphasize the importance of good care of amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908734?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299908734?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '49 s',
      'Vad är kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Vad är kvicksilver?'
        ..img_url = 'https://i.vimeocdn.com/video/738125023.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vad är kvicksilver?'
          ..url = 'rengoring-av-utjamningskarl'
          ..description =
              'Michelle Nerentorp berättar vad grundämnet kvicksilver är.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Cleaning-of-the-leveling vessel'
          ..url = 'cleaning-of-the-leveling-vessel'
          ..description =
              'This is how environmental service company cleans a leveling vessel.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901545?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901545?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '29 s',
      'Var finns kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Var finns kvicksilver?'
        ..img_url = 'https://i.vimeocdn.com/video/738125647.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Var finns kvicksilver?'
          ..url = 'rengoring-av-utjamningskarl'
          ..description =
              'Michelle Nerentorp berättar om var kvicksilver finns i naturen och hur människan har bidragit till att sprida det. ')
        ..phrases['en'] = (new Phrases()
          ..name = 'Cleaning-of-the-leveling vessel'
          ..url = 'cleaning-of-the-leveling-vessel'
          ..description =
              'Michelle Nerentorp berättar om var kvicksilver finns i naturen och hur människan har bidragit till att sprida det.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901700?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901700?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 10 s',
      'Vilken roll har tandvården?': new Video()
        ..icon = 'video'
        ..id = 'Vilken roll har tandvården?'
        ..img_url = 'https://i.vimeocdn.com/video/738125764.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vilken roll har tandvården?'
          ..url = 'rengoring-av-utjamningskarl'
          ..description =
              'Michelle Nerentorp berättar om tandvårdens ansvar för problemet med att kvicksilver kommer ut i naturen.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Cleaning-of-the-leveling vessel'
          ..url = 'cleaning-of-the-leveling-vessel'
          ..description =
              'This is how environmental service company cleans a leveling vessel.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299902118?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299902118?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '43 s',
      'Hur påverkas vi av kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Hur påverkas vi av kvicksilver?'
        ..img_url = 'https://i.vimeocdn.com/video/738124827.webp?mw=1920&amp;mh=1080&amp;q=70'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Hur påverkas vi av kvicksilver?'
          ..url = 'rengoring-av-utjamningskarl'
          ..description =
              'Michelle Nerentorp berättar om hur människan påverkas av kvicksilver. ')
        ..phrases['en'] = (new Phrases()
          ..name = 'Cleaning-of-the-leveling vessel'
          ..url = 'cleaning-of-the-leveling-vessel'
          ..description =
              'Michelle Nerentorp berättar om hur människan påverkas av kvicksilver.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901270?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901270?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 6 s'
    };

    return data;
  }

  String youtubeParameters = '?showinfo=0&rel=0&modestbranding=1&color=white';
}
