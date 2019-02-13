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
    await Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Kvicksilver i naturen': Rise()
        ..icon = 'article'
        ..id = 'Kvicksilver i naturen'
        ..img_url = 'pics/mercury_in_nature.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Kvicksilver i naturen'
          ..description =
              'Artikel om vad kvicksilver är och hur det påverkar naturen.'
          ..url = 'kvicksilver-i-naturen'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Mercury in nature'
          ..description =
              'Article on what mercury is and how it affects nature.'
          ..url = 'mercury-in-nature'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Le mercure dans la nature'
          ..description =
              'Article présentant le mercure et expliquant en quoi il affecte la nature.'
          ..url = 'mercure-dans-nature'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'El mercurio en la naturaleza'
          ..description =
              'Artículo sobre qué es el mercurio y cómo afecta a la naturaleza.'
          ..url = 'el-mercurio-en-la-naturaleza'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Quecksilber in der Natur'
          ..description =
              'Artikel über die Eigenschaften von Quecksilber und wie es sich auf die Natur auswirkt.'
          ..url = 'quecksilber-in-der-natur'
          ..estimated_time_for_completion = 'Ca. 5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/kvicksilver-i-naturen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/mercury-in-nature/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/mercury-in-nature/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/mercury-in-nature/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/mercury-in-nature/content/index.html',
      'Lagar och regler': Rise()
        ..icon = 'article'
        ..id = 'Lagar och regler'
        ..img_url = 'pics/laws_and_regulations.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Lagar och regler'
          ..url = 'lagar-och-regler'
          ..description =
              'Artikel om de lagar och regler som styr hanteringen av amalgam.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'Laws and rules'
          ..url = 'laws-and-rules'
          ..description =
              'Article on the laws and rules that govern the handling of amalgam.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Lois et règlementations'
          ..url = 'lois-et-reglementations'
          ..description =
              'Article sur les lois et règlementations qui régissent le traitement des amalgames.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Leyes y reglamentos'
          ..url = 'leyes-y-reglamentos'
          ..description =
              'Artículo sobre las leyes y normas que rigen la manipulación de la amalgama.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Gesetze und Vorschriften'
          ..url = 'gesetze-und-vorschriften'
          ..description =
              'Artikel über die Gesetze und Vorschriften zum Umgang mit Amalgam.'
          ..estimated_time_for_completion = 'Ca. 5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/lagar-och-regler/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/laws-and-regulations/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/laws-and-regulations/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/laws-and-regulations/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/laws-and-regulations/content/index.html',
      'Vad är vad på mottagningen?': Rise()
        ..icon = 'article'
        ..id = 'Vad är vad på mottagningen?'
        ..img_url = 'pics/what_is_what_on_the_reception.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'På mottagningen'
          ..url = 'vad-ar-vad-pa-mottagningen'
          ..description = 'Översikt av utrustning på mottagningen.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'At the practice'
          ..url = 'whats-what-in-the-practices'
          ..description = 'Overview of equipment at practices.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Au cabinet'
          ..url = 'presentation-equipement-cabinets'
          ..description = 'Présentation de l’équipement dans les cabinets.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'En la clínica'
          ..url = 'que-es-que-en-la-clinica'
          ..description = 'Resumen de los equipos de la clínica.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'In der Praxis'
          ..url = 'was-ist-was-in-der-praxis'
          ..description = 'Übersicht über die Geräte in Praxen.'
          ..estimated_time_for_completion = 'Ca. 5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/vad-ar-vad-pa-mottagningen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/overview-over-equipment/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/overview-over-equipment/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/overview-over-equipment/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/overview-over-equipment/content/index.html',
      'Tandvårdsteamets ansvar': Rise()
        ..icon = 'article'
        ..id = 'Tandvårdsteamets ansvar '
        ..img_url = 'pics/responsibility.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Tandvårdsteamets ansvar'
          ..url = 'tandvardsteamets-ansvar'
          ..description = 'Här får du instruktioner om tandvårdsteamets ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'The dental care team’s responsibilities'
          ..url = 'the-dental-care-teams-responsibilities'
          ..description =
              'Instructions on the dental care team’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Les responsabilités de l’équipe de soins dentaires'
          ..url = 'les-responsabilites-equipe-soins-dentaires'
          ..description =
              'Des instructions sur les responsabilités de l’équipe de soins dentaires sont disponibles ici.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Las responsabilidades del equipo de cuidado dental'
          ..url = 'las-responsabilidades-del-equipo-de-cuidado-dental'
          ..description =
              'Aquí encontrará instrucciones relacionadas con las responsabilidades del equipo de cuidado dental.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Aufgaben des Zahnpflegeteams'
          ..url = 'aufgaben-des-zahnpflegeteams'
          ..description =
              'Anleitungen für die Aufgaben des Zahnpflegeteams sind hier zu finden.'
          ..estimated_time_for_completion = 'Ca. 5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/tandvardsteamets-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-care-teams-responsibility/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-care-teams-responsibility/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-care-teams-responsibility/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-care-teams-responsibility/content/index.html',
      'serviceteknikerns ansvar': Rise()
        ..icon = 'article'
        ..id = 'serviceteknikerns ansvar'
        ..img_url = 'pics/dentist_responsibility.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Serviceteknikerns ansvar'
          ..url = 'serviceteknikerns-ansvar'
          ..description =
              'Här får du instruktioner om serviceteknikerns ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'The service engineer’s responsibilities'
          ..url = 'the-service-engineers-responsibilities'
          ..description =
              'Instructions on the service technician’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Les responsabilités de l’ingénieur de service'
          ..url = 'les-responsabilites-ingenieur-service'
          ..description =
              'Des instructions sur les responsabilités de l’ingénieur de service sont disponibles ici.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Las responsabilidades del ingeniero de servicio'
          ..url = 'las-responsabilidades-del-ingeniero-de-servicio'
          ..description =
              'Aquí podrá encontrar instrucciones relacionadas con las responsabilidades de los técnicos de servicio.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Aufgaben des Servicetechnikers'
          ..url = 'aufgaben-des-servicetechnikers'
          ..description =
              'Anleitungen für die Aufgaben des Servicetechnikers sind hier zu finden.'
          ..estimated_time_for_completion = 'Ca. 5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/serviceteknikerns-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-technicians-responsibility/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/dental-technicians-responsibility/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/dental-technicians-responsibility/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/dental-technicians-responsibility/content/index.html',
      'Instruktioner för miljöserviceföretag': Rise()
        ..icon = 'article'
        ..id = 'Instruktioner för miljöserviceföretag'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (Phrases()
          ..name = 'Det här gör ett miljöserviceföretag'
          ..url = 'instruktioner-for-miljoserviceforetag'
          ..description =
              'Här får du instruktioner om miljöserviceföretagens ansvar.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['en'] = (Phrases()
          ..name = 'What an environmental maintenance service does'
          ..url = 'instructions-for-environmental-maintenance-services'
          ..description =
              'Instructions on an environmental maintenance service’s responsibilities are available here.'
          ..estimated_time_for_completion = 'Ca 5 min')
        ..phrases['fr'] = (Phrases()
          ..name = 'Que fait un service de maintenance environnementale'
          ..url = 'instructions-pour-services-maintenance-environnementale'
          ..description =
              'Des instructions sur les responsabilités d’un service de maintenance environnementale sont disponibles ici.'
          ..estimated_time_for_completion = 'Env. 5 min')
        ..phrases['es'] = (Phrases()
          ..name = 'Qué hace un equipo de mantenimiento ambiental'
          ..url =
              'instrucciones-para-los-servicios-del-equipo-de-mantenimiento-ambiental'
          ..description =
              'Aquí podrá encontrar instrucciones relacionadas con las responsabilidades del equipo de mantenimiento ambiental.'
          ..estimated_time_for_completion = 'Aprox. 5 minutos')
        ..phrases['de'] = (Phrases()
          ..name = 'Was ein Umweltwartungsdienst macht'
          ..url = 'anleitungen-fur-umweltwartungsdienste'
          ..description =
              'Anleitungen für die Aufgaben des Umweltwartungsdienstes.'
          ..estimated_time_for_completion = 'Ca. 5 Min.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/instruktioner-for-miljoserviceforetag/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/instructions-for-environmental-services-companies/content/index.html'
        ..url['fr'] =
            'https://hg-rid.eu/rise/instructions-for-environmental-services-companies/content/index.html'
        ..url['es'] =
            'https://hg-rid.eu/rise/instructions-for-environmental-services-companies/content/index.html'
        ..url['de'] =
            'https://hg-rid.eu/rise/instructions-for-environmental-services-companies/content/index.html'
    };

    return data;
  }
}
