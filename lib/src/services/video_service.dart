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
        ..img_url = 'pics/this_is_how_we_experienced_redevelopment.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så upplevde vi saneringen'
          ..url = 'sanering'
          ..description =
              'Susann Balzar reflekterar kring saneringen på mottagningen.')
        ..phrases['en'] = (new Phrases()
          ..name = 'How we experienced remediation process'
          ..url = 'remidiation-process-experience'
          ..description = 'Susann Balzar reflects on the remediation process.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921184?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299921184?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 12 s',
      'Så minimerar vi utsläppen': new Video()
        ..icon = 'video'
        ..id = 'Så minimerar vi utsläppen'
        ..img_url = 'pics/this_is_how_we_minimize_emissions.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så minimerar vi utsläppen'
          ..url = 'sa-minimerar-vi-utsläppen'
          ..description =
              'Claes Karlsson berättar om skötselarbetet på mottagningen.')
        ..phrases['en'] = (new Phrases()
          ..name = 'How to minimize emissions'
          ..url = 'how-to-minimize-emissions'
          ..description =
              'Claes Karlsson talks about the amalgam management at the dental practice where he works.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920998?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299920998?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 12 s',
      'Så går en installation till': new Video()
        ..icon = 'video'
        ..id = 'Så går en installation till'
        ..img_url = 'pics/this_is_how_installation_is_done.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så går en installation till'
          ..url = 'installation'
          ..description =
              'Anders och Patrik berättar om installationen av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Here we explain installation process'
          ..url = 'installation'
          ..description =
              'Anders and Patrik talk about istallation  of amalgam separators and extraction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920834?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299920834?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 35 s',
      'Att lämna amalgam bakom sig': new Video()
        ..icon = 'video'
        ..id = 'Att lämna amalgam bakom sig'
        ..img_url = 'pics/leaving_amalgam.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att lämna amalgam bakom sig'
          ..url = 'lamna-amalgam'
          ..description =
              'Claes Karlsson ger sitt perspektiv på hur branschen hanterade amalgamförbundet som trädde i kraft 2009 i Sverige.')
        ..phrases['en'] = (new Phrases()
          ..name = 'How to stop using murcury based amalgam'
          ..url = 'stop-using-amalgam'
          ..description =
              'Claes Karlsson gives his perspective on how the industry handled the amalgam prohibition, which took effect in 2009 in Sweden.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908976?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299908976?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 1s',
      'Rutiner vid patientbehandling': new Video()
        ..icon = 'video'
        ..id = 'Rutiner vid patientbehandling'
        ..img_url = 'pics/routines_during_patient_treatment.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Rutiner vid patientbehandling'
          ..url = 'rutiner-vid-patientbehandling'
          ..description =
              'Så ser rutinerna kring amalgamhantering vid patientbesök ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Routines during patient treatment'
          ..url = 'routines-during-patient-treatment'
          ..description =
              'Routines associated with amalgam management during patient treatment.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910154?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910154?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '42 s',
      'Skötsel av amalgamavskiljare': new Video()
        ..icon = 'video'
        ..id = 'Skötsel av amalgamavskiljare'
        ..img_url = 'pics/care_of_amalgam_separators_thumb.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Skötsel av amalgamavskiljare'
          ..url = 'skotsel-av-amalgamavskiljare'
          ..description =
              'Så ser rutinerna för skötsel av amalgamavskiljare och sugsystem ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Management of amalgam separators'
          ..url = 'care-of-amalgam-separators'
          ..description =
              'Procedures for handling amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910768?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910768?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 10 s',
      'Att tänka på vid installation': new Video()
        ..icon = 'video'
        ..id = 'Att tänka på vid installation'
        ..img_url = 'pics/important_points_during_installation.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att tänka på vid installation'
          ..url = 'att-tanka-pa-vid-installation'
          ..description =
              'Att tänka på kring installation av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name =
              'What to keep in mind during installation of amalgam separators and extraction systems'
          ..url = 'what-to-keep-in-mind-during-installation'
          ..description =
              'What to keep in mind during installation of amalgam separators and extraction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909211?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909211?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 16 s',
      'Byte av amalgamavskiljare': new Video()
        ..icon = 'video'
        ..id = 'Byte av amalgamavskiljare'
        ..img_url = 'pics/change_of_amalgam_separators.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Byte av amalgamavskiljare'
          ..url = 'byte-av-amalgamavskiljare'
          ..description =
              'Så byts amalgamavskiljare i våta och torra sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Replacement of amalgam separator'
          ..url = 'replacement-of-amalgam-separator'
          ..description =
              'This is how amalgam separators are replaced in wet and dry extraction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909564?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909564?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 19 s',
      'Funktionskontroll': new Video()
        ..icon = 'video'
        ..id = 'Funktionskontroll'
        ..img_url = 'pics/functions_check.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Funktionskontroll'
          ..url = 'funktionskontroll'
          ..description =
              'Så utför miljöserviceföretaget en funktionskontroll av amalgamavskiljare.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Functions check'
          ..url = 'functions-check'
          ..description =
              'This is how environmental service company makes sure that amalgam separators are functioning well.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909870?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909870?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '42 s',
      'Tömning av vattenlås': new Video()
        ..icon = 'video'
        ..id = 'Tömning av vattenlås'
        ..img_url = 'pics/drainage_of_water_trap.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Tömning av vattenlås'
          ..url = 'tomning-av-vattenlas'
          ..description =
              'Så rengör och tömmer miljöserviceföretaget vattenlås.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Drainage of water traps'
          ..url = 'drainage-of-water-traps'
          ..description =
              'This is how environment service companies drain water traps')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921354?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299921354?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '23 s',
      'Slutförvaring': new Video()
        ..icon = 'video'
        ..id = 'Slutförvaring'
        ..img_url = 'pics/storage.jpg'
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
        ..img_url = 'pics/remidiation.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Sanering '
          ..url = 'sanering'
          ..description = 'Så genomförs en sanering.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Remediation'
          ..url = 'remediation'
          ..description = 'This is how remediation is carried out.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910425?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910425?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 13 s',
      'Varför är skötseln så viktig?': new Video()
        ..icon = 'video'
        ..id = 'Varför är skötseln så viktig? '
        ..img_url = 'pics/why_is_care_so_important.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Varför är skötseln så viktig?'
          ..url = 'varfor-ar-skotseln-sa-viktig'
          ..description =
              'Dentaltekniker understryker vikten av god skötsel av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Why is care so important?'
          ..url = 'why-is-care-so-important'
          ..description =
              'Dental technicians emphasize the importance of good care of amalgam separators and extraction systems.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908734?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299908734?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '49 s',
      'Vad är kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Vad är kvicksilver?'
        ..img_url = 'pics/what_is_mercury.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vad är kvicksilver?'
          ..url = 'vad-ar-kvicksilver'
          ..description = 'Michelle Nerentorp berättar om vad kvicksilver är.')
        ..phrases['en'] = (new Phrases()
          ..name = 'What is mercury'
          ..url = 'what-is-mercury'
          ..description =
              'Michelle Nerentorp talks about mercury as a chemical element.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901545?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901545?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '29 s',
      'Var finns kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Var finns kvicksilver?'
        ..img_url = 'pics/where_is_mercury.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Var finns kvicksilver?'
          ..url = 'var-finns-kvicksilver'
          ..description =
              'Michelle Nerentorp berättar om var kvicksilver finns i naturen och hur människan har bidragit till att sprida det.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Where can we find mercury?'
          ..url = 'where-can-we-find-mercury'
          ..description =
              'Michelle Nerentorp tells us where we can find mercury in nature and how man has helped to spread it.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901700?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901700?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 10 s',
      'Vilken roll har tandvården?': new Video()
        ..icon = 'video'
        ..id = 'Vilken roll har tandvården?'
        ..img_url = 'pics/what_is_the_role_of_dental_care_proffessionals.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vilken roll har tandvården?'
          ..url = 'vilken-roll-har-tandvarden'
          ..description =
              'Michelle Nerentorp berättar om tandvårdens ansvar för problemet med att kvicksilver kommer ut i naturen.')
        ..phrases['en'] = (new Phrases()
          ..name = 'What role do dental care proffessionals have?'
          ..url = 'the-role-of-dental-care-proffessionals'
          ..description =
              'Michelle Nerentorp talks about the dental proffessionals responsibility for the problem of mercury spreading into nature.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299902118?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299902118?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '43 s',
      'Hur påverkas vi av kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Hur påverkas vi av kvicksilver?'
        ..img_url = 'pics/how_are_we_affected_by_mercury.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Hur påverkas vi av kvicksilver?'
          ..url = 'hur-paverkas-vi-av-kvicksilver'
          ..description =
              'Michelle Nerentorp berättar om hur människan påverkas av kvicksilver. ')
        ..phrases['en'] = (new Phrases()
          ..name = 'How are we affected by mercury?'
          ..url = 'how-are-we-affected-by-mercury'
          ..description =
              'Michelle Nerentorp talks about how we are affected by mercury.')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901270?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901270?color=00acd0&byline=0&portrait=0'
        ..estimated_time_for_completion = '1 min 6 s'
    };

    return data;
  }
}
