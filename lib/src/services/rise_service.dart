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
              'Article about what mercury is and how it affects nature.'
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
          ..name = 'Laws and regulations'
          ..url = 'laws-and-regulations'
          ..description =
              'Article about the laws and regulations governing the management of amalgam.'
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
          ..name = 'At the dental reception'
          ..url = 'everview-of-dentist-equipment'
          ..description = 'Overview over equipment'
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
          ..name = 'Dentalcare teams responsibility'
          ..url = 'dentalcare-teams-responsibility'
          ..description =
              'Here you will find instructions on the dentalcare team'
              's responsibility.'
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
          ..name = 'serviceteknikerns ansvar'
          ..url = 'serviceteknikerns-ansvar'
          ..description = 'Här får du instruktioner om serviceteknikerns ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (new Phrases()
          ..name = 'Dental technicians responsibility'
          ..url = 'dental-technicians-responsibility'
          ..description =
              'Here you will find instructions on the dental technicians responsibilities.'
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
          ..name = 'Instructions for environmental service companies'
          ..url = 'instructions-for-environmental-service-companies'
          ..description =
              'Here you will find instructions for environmental service companies and responsibility.'
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
