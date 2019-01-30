import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../models/rise.dart';
import '../services/resource_service.dart';

@Injectable()
class RiseService extends ResourceService<Rise> {
  @override
  Future<Map<String, Rise>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Kvicksilver i naturen': new Rise()
        ..icon = 'article'
        ..id = 'Kvicksilver i naturen'
        ..img_url = 'pics/mercury_in_nature.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Kvicksilver i naturen'
          ..description =
              'Artikel om vad kvicksilver är och hur det påverkar naturen.'
          ..url = 'kvicksilver-i-naturen'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'Mercury in nature'
          ..description =
              'Article on what mercury is and how it affects nature.'
          ..url = 'mercury-in-nature'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/kvicksilver-i-naturen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/mercury-in-nature/content/index.html',




      'Lagar och regler': new Rise()
        ..icon = 'article'
        ..id = 'Lagar och regler'
        ..img_url = 'pics/laws_and_regulations.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Lagar och regler'
          ..url = 'lagar-och-regler'
          ..description =
              'Artikel om de lagar och regler som styr hanteringen av amalgam.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'Laws and rules'
          ..url = 'laws-and-rules'
          ..description =
              'Article on the laws and rules that govern the handling of amalgam.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/lagar-och-regler/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/laws-and-regulations/content/index.html',



      'Vad är vad på mottagningen?': new Rise()
        ..icon = 'article'
        ..id = 'Vad är vad på mottagningen?'
        ..img_url = 'pics/what_is_what_on_the_reception.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'På mottagningen'
          ..url = 'vad-ar-vad-pa-mottagningen'
          ..description = 'Översikt av utrustning på mottagningen.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'At the practice'
          ..url = 'whats-what-in-the-practices'
          ..description = 'Overview of equipment at practices.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/vad-ar-vad-pa-mottagningen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/overview-over-equipment/content/index.html',



      'Tandvårdsteamets ansvar': new Rise()
        ..icon = 'article'
        ..id = 'Tandvårdsteamets ansvar '
        ..img_url = 'pics/responsibility.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Tandvårdsteamets ansvar'
          ..url = 'tandvardsteamets-ansvar'
          ..description = 'Här får du instruktioner om tandvårdsteamets ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'The dental care team’s responsibilities'
          ..url = 'the-dental-care-teams-responsibilities'
          ..description =
              'Instructions on the dental care team’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/tandvardsteamets-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-care-teams-responsibility/content/index.html',



      'serviceteknikerns ansvar': new Rise()
        ..icon = 'article'
        ..id = 'serviceteknikerns ansvar'
        ..img_url = 'pics/dentist_responsibility.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Serviceteknikerns ansvar'
          ..url = 'serviceteknikerns-ansvar'
          ..description = 'Här får du instruktioner om serviceteknikerns ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'The service engineer’s responsibilities'
          ..url = 'the-service-engineers-responsibilities'
          ..description =
              'Instructions on the service technician’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/serviceteknikerns-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-technicians-responsibility/content/index.html',



      'Instruktioner för miljöserviceföretag': new Rise()
        ..icon = 'article'
        ..id = 'Instruktioner för miljöserviceföretag'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Det här gör ett miljöserviceföretag'
          ..url = 'instruktioner-for-miljoserviceforetag'
          ..description =
              'Här får du instruktioner om miljöserviceföretagens ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'What an environmental maintenance service does'
          ..url = 'instructions-for-environmental-maintenance-services'
          ..description =
              'Instructions on an environmental maintenance service’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/instruktioner-for-miljoserviceforetag/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/instructions-for-environmental-services-companies/content/index.html'
    };

    return data;
  }
}
