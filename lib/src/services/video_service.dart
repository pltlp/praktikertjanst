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
              'Susann Balzar reflekterar kring saneringen på mottagningen.'
          ..estimated_time_for_completion = '1 min 12 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Our experience of decontamination'
          ..url = 'decontamination'
          ..description = 'Susann Balzar reflects on decontamination of her practice.'
          ..estimated_time_for_completion = '1 min 12 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921184?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299921184?color=00acd0&byline=0&portrait=0',




      'Så minimerar vi utsläppen': new Video()
        ..icon = 'video'
        ..id = 'Så minimerar vi utsläppen'
        ..img_url = 'pics/this_is_how_we_minimize_emissions.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så minimerar vi utsläppen'
          ..url = 'sa-minimerar-vi-utsläppen'
          ..description =
              'Claes Karlsson berättar om skötselarbetet på mottagningen.'
          ..estimated_time_for_completion = '1 min 12 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'How to minimise emissions'
          ..url = 'how-to-minimise-emissions'
          ..description =
              'Claes Karlsson tells us about maintenance in the practice.'
          ..estimated_time_for_completion = '1 min 12 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920998?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299920998?color=00acd0&byline=0&portrait=0',




      'Så går en installation till': new Video()
        ..icon = 'video'
        ..id = 'Så går en installation till'
        ..img_url = 'pics/this_is_how_installation_is_done.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så går en installation till'
          ..url = 'installation'
          ..description =
              'Anders och Patrik berättar om installationen av amalgamavskiljare och sugsystem.'
          ..estimated_time_for_completion = '1 min 35 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Installation'
          ..url = 'installation'
          ..description =
              'Anders and Patrik explain installation of amalgam separators and suction system.'
          ..estimated_time_for_completion = '1 min 35 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299920834?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299920834?color=00acd0&byline=0&portrait=0',




      'Att lämna amalgam bakom sig': new Video()
        ..icon = 'video'
        ..id = 'Att lämna amalgam bakom sig'
        ..img_url = 'pics/leaving_amalgam.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att lämna amalgam bakom sig'
          ..url = 'lamna-amalgam'
          ..description =
              'Claes Karlsson ger sitt perspektiv på hur branschen hanterade amalgamförbundet som trädde i kraft 2009 i Sverige.'
          ..estimated_time_for_completion = '1 min 1 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Ceasing the use of amalgam'
          ..url = 'ceasing-amalgam'
          ..description =
              'Claes Karlsson gives his views on how the industry tackled the amalgam ban that came into effect in Sweden in 2009.'
          ..estimated_time_for_completion = '1 min 1 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908976?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299908976?color=00acd0&byline=0&portrait=0',



      'Rutiner vid patientbehandling': new Video()
        ..icon = 'video'
        ..id = 'Rutiner vid patientbehandling'
        ..img_url = 'pics/routines_during_patient_treatment.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Rutiner vid patientbehandling'
          ..url = 'rutiner-vid-patientbehandling'
          ..description =
              'Så ser rutinerna kring amalgamhantering vid patientbesök ut.'
          ..estimated_time_for_completion = '42 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Patient treatment routines'
          ..url = 'patient-treatment-routines'
          ..description =
              'A look at the routines for amalgam handling during a patient’s appointment.'
          ..estimated_time_for_completion = '42 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910154?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910154?color=00acd0&byline=0&portrait=0',



      'Skötsel av amalgamavskiljare': new Video()
        ..icon = 'video'
        ..id = 'Skötsel av amalgamavskiljare'
        ..img_url = 'pics/care_of_amalgam_separators_thumb.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Skötsel av amalgamavskiljare'
          ..url = 'skotsel-av-amalgamavskiljare'
          ..description =
              'Så ser rutinerna för skötsel av amalgamavskiljare och sugsystem ut.'
          ..estimated_time_for_completion = '1 min 10 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Amalgam separator maintenance'
          ..url = 'amalgam-separator-maintenance'
          ..description =
              'A look at the routines for maintenance of amalgam separators and suction systems.'
          ..estimated_time_for_completion = '1 min 10 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910768?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910768?color=00acd0&byline=0&portrait=0',



      'Att tänka på vid installation': new Video()
        ..icon = 'video'
        ..id = 'Att tänka på vid installation'
        ..img_url = 'pics/important_points_during_installation.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att tänka på vid installation'
          ..url = 'att-tanka-pa-vid-installation'
          ..description =
              'Att tänka på kring installation av amalgamavskiljare och sugsystem.'
          ..estimated_time_for_completion = '1 min 16 sek')
        ..phrases['en'] = (new Phrases()
          ..name =
              'What to bear in mind for installation'
          ..url = 'what-to-bear-in-mind-for-installation'
          ..description =
              'Things to bear in mind for installation of amalgam separators and suction systems.'
          ..estimated_time_for_completion = '1 min 16 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909211?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909211?color=00acd0&byline=0&portrait=0',



      'Byte av amalgamavskiljare': new Video()
        ..icon = 'video'
        ..id = 'Byte av amalgamavskiljare'
        ..img_url = 'pics/change_of_amalgam_separators.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Byte av amalgamavskiljare'
          ..url = 'byte-av-amalgamavskiljare'
          ..description =
              'Så byts amalgamavskiljare i våta och torra sugsystem.'
          ..estimated_time_for_completion = '1 min 19 sec')
        ..phrases['en'] = (new Phrases()
          ..name = 'Replacing amalgam separators'
          ..url = 'replacing-amalgam separators'
          ..description =
              'How to replace amalgam separators in wet and dry suction systems.'
          ..estimated_time_for_completion = '1 min 19 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909564?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909564?color=00acd0&byline=0&portrait=0',
      
      
      
      'Funktionskontroll': new Video()
        ..icon = 'video'
        ..id = 'Funktionskontroll'
        ..img_url = 'pics/functions_check.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Funktionskontroll'
          ..url = 'funktionskontroll'
          ..description =
              'Så utför miljöserviceföretaget en funktionskontroll av amalgamavskiljare.'
          ..estimated_time_for_completion = '42 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Function check'
          ..url = 'function check'
          ..description =
              'How an environmental maintenance service performs function checks of amalgam separators.'
          ..estimated_time_for_completion = '42 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299909870?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299909870?color=00acd0&byline=0&portrait=0',
      
      
      'Tömning av vattenlås': new Video()
        ..icon = 'video'
        ..id = 'Tömning av vattenlås'
        ..img_url = 'pics/drainage_of_water_trap.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Tömning av vattenlås'
          ..url = 'tomning-av-vattenlas'
          ..description =
              'Så rengör och tömmer miljöserviceföretaget vattenlås.'
          ..estimated_time_for_completion = '23 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Emptying the water lock'
          ..url = 'emptying-the-water-lock'
          ..description =
              'How an environmental maintenance service empties and cleans a water lock.'
          ..estimated_time_for_completion = '23 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299921354?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299921354?color=00acd0&byline=0&portrait=0',
     
     
     
     
      'Slutförvaring': new Video()
        ..icon = 'video'
        ..id = 'Slutförvaring'
        ..img_url = 'pics/storage.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Slutförvaring '
          ..url = 'slutforvaring'
          ..description = 'Så tas amalgamavfallet om hand.'
          ..estimated_time_for_completion = '52 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Terminal storage'
          ..url = 'terminal-storage'
          ..description = 'Dealing with amalgam waste.'
          ..estimated_time_for_completion = '52 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299911163?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299911163?color=00acd0&byline=0&portrait=0',



      'Sanering': new Video()
        ..icon = 'video'
        ..id = 'Sanering'
        ..img_url = 'pics/remidiation.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Sanering '
          ..url = 'sanering'
          ..description = 'Så genomförs en sanering.'
          ..estimated_time_for_completion = '1 min 13 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Remediation'
          ..url = 'remediation'
          ..description = 'This is how remediation is carried out.'
          ..estimated_time_for_completion = '1 min 13 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299910425?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299910425?color=00acd0&byline=0&portrait=0',



      'Varför är skötseln så viktig?': new Video()
        ..icon = 'video'
        ..id = 'Varför är skötseln så viktig? '
        ..img_url = 'pics/why_is_care_so_important.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Varför är skötseln så viktig?'
          ..url = 'varfor-ar-skotseln-sa-viktig'
          ..description =
              'servicetekniker understryker vikten av god skötsel av amalgamavskiljare och sugsystem.'
          ..estimated_time_for_completion = '49 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Why is maintenance so important?'
          ..url = 'why-is-maintenance-so-important'
          ..description =
              'A service engineer explains the importance of good maintenance for amalgam separators and suction systems.'
          ..estimated_time_for_completion = '49 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299908734?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299908734?color=00acd0&byline=0&portrait=0',




      'Vad är kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Vad är kvicksilver?'
        ..img_url = 'pics/what_is_mercury.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vad är kvicksilver?'
          ..url = 'vad-ar-kvicksilver'
          ..description = 'Michelle Nerentorp berättar om vad kvicksilver är.'
          ..estimated_time_for_completion = '29 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'What is mercury'
          ..url = 'what-is-mercury'
          ..description =
              'Michelle Nerentorp tells us what the element of mercury is.'
          ..estimated_time_for_completion = '29 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901545?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901545?color=00acd0&byline=0&portrait=0',




      'Var finns kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Var finns kvicksilver?'
        ..img_url = 'pics/where_is_mercury.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Var finns kvicksilver?'
          ..url = 'var-finns-kvicksilver'
          ..description =
              'Michelle Nerentorp berättar om var kvicksilver finns i naturen och hur människan har bidragit till att sprida det.'
          ..estimated_time_for_completion = '1 min 10 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'Where is mercury found?'
          ..url = 'where-is-mercury-found'
          ..description =
              'Michelle Nerentorp talks about where mercury is found in nature, and how man has helped to spread it.'
          ..estimated_time_for_completion = '1 min 10 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901700?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901700?color=00acd0&byline=0&portrait=0',







      'Vilken roll har tandvården?': new Video()
        ..icon = 'video'
        ..id = 'Vilken roll har tandvården?'
        ..img_url = 'pics/what_is_the_role_of_dental_care_proffessionals.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vilken roll har tandvården?'
          ..url = 'vilken-roll-har-tandvarden'
          ..description =
              'Michelle Nerentorp berättar om tandvårdens ansvar för problemet med att kvicksilver kommer ut i naturen.'
          ..estimated_time_for_completion = '43 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'What is the role of the dental industry?'
          ..url = 'what-is-the-role-of-the-dental-industry'
          ..description =
              'Michelle Nerentorp talks about the responsibility of the dental industry for the problem of mercury being released into nature.'
          ..estimated_time_for_completion = '43 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299902118?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299902118?color=00acd0&byline=0&portrait=0',




            
      'Hur påverkas vi av kvicksilver?': new Video()
        ..icon = 'video'
        ..id = 'Hur påverkas vi av kvicksilver?'
        ..img_url = 'pics/how_are_we_affected_by_mercury.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Hur påverkas vi av kvicksilver?'
          ..url = 'hur-paverkas-vi-av-kvicksilver'
          ..description =
              'Michelle Nerentorp berättar om hur människan påverkas av kvicksilver.'
          ..estimated_time_for_completion = '1 min 6 sek')
        ..phrases['en'] = (new Phrases()
          ..name = 'How are we affected by mercury?'
          ..url = 'how-are-we-affected-by-mercury'
          ..description =
              'Michelle Nerentorp explains how humans are affected by mercury.'
          ..estimated_time_for_completion = '1 min 6 sec')
        ..type = ResourceType.video
        ..url['sv'] =
            'https://player.vimeo.com/video/299901270?color=00acd0&byline=0&portrait=0'
        ..url['en'] =
            'https://player.vimeo.com/video/299901270?color=00acd0&byline=0&portrait=0'
    };

    return data;
  }
}
