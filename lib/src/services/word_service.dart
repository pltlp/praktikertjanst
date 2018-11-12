import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/word.dart';

@Injectable()
class WordService {
  Future<Map<String, Word>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, Word> get data => _data;

  final Map<String, Word> _data = {
    'Amalgamavskiljare': new Word()
      ..img_urls = ['pics/amalgam_separator.jpg', 'pics/amalgam_separators_dry_system.jpeg']
      ..alts = {
        'sv': 'amalgamavskiljare torrt system',
        'en': 'amalgam separator dry system'
      }
      ..phrases['sv'] = (new Phrases()
        ..description =
            'En anordning som fångar upp amalgampartiklar i det vatten som används vid tandvårdsbehandlingar, innan det går ut i avloppet. Genom filtrering, sedimentation, centrifugering eller en kombination av dessa skiljs amalgamet ut och blir kvar i behållaren. Amalgamet omhändertas sedan som miljöfarligt avfall. Amalgamavskiljare kan vara inbyggda i en unit eller placeras så att den kan kopplas till flera unitar.'
        ..name = 'Amalgamavskiljare')
      ..phrases['en'] = (new Phrases()
        ..description =
            'A device that captures amalgam particles in the water used for dental treatments before it enters the sewer. By filtration, sedimentation, centrifugation or a combination of these, the amalgam is separated and remains in the container. The amalgam is then disposed of as hazardous waste. Amalgam separators can be built into a unit or placed to connect it to several units.'
        ..name = 'Amalgam Separator'),
    'Backventil': new Word()
      ..img_urls = ['pics/check_valve.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'I våta system måste det finnas en backventil efter amalgamavskiljaren för att undvika baksug.'
        ..name = 'Backventil')
      ..phrases['en'] = (new Phrases()
        ..description =
            'In wet systems, there must be a non-return valve after amalgam separator to prevent back suction.'
        ..name = 'Non-return valve'),
    'Dentalt amalgam': new Word()
      ..img_urls = ['pics/dental_amalgam.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Amalgam som fram till år 2009 var tillåtet som tandfyllnadsmaterial i Sverige. Består av kvicksilver (40-50%), silver (20-35%), tenn (12-15%) koppar (5-15%), zink (2%).'
        ..name = 'Dentalt amalgam')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Amalgam, which until 2009 was permitted as dental fillings in Sweden. Consists of mercury (40-50%), silver (20-35%), tin (12-15%) copper (5-15%), zinc (2%).'
        ..name = 'Dental amalgam'),
    'Diskbänksavskiljare': new Word()
      ..img_urls = ['pics/sink_separator.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Amalgamavskiljare som fångar upp amalgampartiklar i det vatten som används vid vask för rengöring av instrument och övrig utrustning som har varit i kontakt med amalgam, innan de diskas/steriliseras i diskdesinfektor och autoklav.'
        ..name = 'Diskbänksavskiljare')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Amalgam separators that capture amalgam particles in the water used for washing instruments and other equipment that have been in contact with amalgam before washing / sterilization in the disinfector and autoclave.'
        ..name = 'Sink trap'),
    'Föravskiljare': new Word()
      ..img_urls = ['pics/amalgam_pre_separators.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Föravskiljare Installeras innan amalgamavskiljare för att fånga upp större partiklar som skulle kunna blockera efterföljande amalgamavskiljare.'
        ..name = 'Föravskiljare')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Installed before amalgam separator to capture larger particles that could block subsequent amalgam separators.'
        ..name = 'Pre-separator'),
    'Godkänd avfallsbehållare': new Word()
      ..img_urls = ['pics/approved_waste_container.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Behållare för riskavfall såsom kvicksilver ska vara UN-godkänd och uppfylla kraven för transport av farligt avfall. UN-nummer är ett identifieringsnummer för farligt gods.'
        ..name = 'Godkänd avfallsbehållare')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Containers for hazardous waste such as mercury must be UN approved and comply with the requirements for the transport of hazardous waste. UN number is an identification number for dangerous goods.'
        ..name = 'Approved waste bin'),
    'Grovsil / Salivsugfilter / Partikelfälla': new Word()
      ..img_urls = ['pics/particle_filter.png']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'För  att  förbättra  amalgamavskiljarens  funktion  och  ta  bort  större  fasta  partiklar  är  unitens  sug  utrustad  med  grovsil/salivsugfilter  eller  partikelfälla.  Den  sistnämnda  är  av  engångstyp.'
        ..name = 'Grovsil / Salivsugfilter / Partikelfälla')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Containers for hazardous waste such as mercury must be UN approved and comply with the requirements for the transport of hazardous waste. UN number is an identification number for dangerous goods.'
        ..name = 'Coarse silk / Saliva filter / Particle trap'),
    'Kompressor': new Word()
      ..img_urls = ['pics/compressor.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Kompressor är ett aggregat som tar luft från omgivningen, pressar ihop den med hjälp av en motor och lagrar den komprimerade luften i en tank (tryckkärl/behållare). Den komprimerade luften kan sen användas vid behov genom att dras via luftrör/slangar till den plats där t. ex. tandläkarutrustningen är placerad. Tryckluft används bl. a. för att kunna driva turbiner/hand/vinkelstycket och för att blåsa rent vid behandlingar.'
        ..name = 'Kompressor')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Compressor is a unit that extracts air from the environment, compresses it with the aid of an engine and stores the compressed air in a tank (pressure vessel / container). The compressed air can then be used if necessary by dragging through air ducts / hoses to the place where, for example, The dental equipment is located. Compressed air is used, for example. a. to drive turbines / hand / angle piece and to blow clean during treatments.'
        ..name = 'Compressor'),
    'Pumpbox': new Word()
      ..img_urls = ['pics/pumpbox.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Installeras för att förflytta vatten, från sekretkärl/bufferttank eller där flödesfall ej är tillräckligt.'
        ..name = 'Pumpbox')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Installed to move water, from secretion vessel / buffer tank or where flow drops are not enough.'
        ..name = 'Pumpbox'),
    'Sanering': new Word()
      ..img_urls = ['pics/decontamination.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Vid en sanering högtrycksspolas kvicksilverförorenade avloppsrör och vattenlås och golvbrunnar töms och rengörs. Amalgamslammet och spolvattnet omhändertas som farligt avfall av företag som har tillstånd att transportera detta. Rören blir aldrig helt rena från kvicksilver och måste därför märkas upp så att de omhändertas som farligt avfall vid demontering. Driftsaneringar ska göras regelbundet. I samband med att en mottagning läggs ned görs en så kallad nedläggningssanering, vilket innebär att man demonterar sugledningar och pluggar igen spolpunkter för att inget kvicksilver ska rinna ut i avloppet.'
        ..name = 'Sanering')
      ..phrases['en'] = (new Phrases()
        ..description =
            'During a cleanup, mercury contaminated drainage pipes and water locks and floor wells are emptied and cleaned. Amalgam sludge and rinse water are disposed of as hazardous waste by companies authorized to transport this. The pipes are never completely clear from mercury and must therefore be labeled to be disposed of as hazardous waste upon dismantling. Operations must be done on a regular basis. When a reception is laid down, a so-called shutdown sanitation is made, which means that the suction lines and plugs are again discharged so that no mercury will drain into the drain.'
        ..name = 'Decontamination'),
    'Saneringsprotokoll': new Word()
      ..img_urls = ['pics/clean_the_sewer.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Dokumentation från företaget som utfört saneringen där bl.a. metod som använts och mängd insamlat kvicksilver framgår. I dokumentationen syns också hur det farliga avfallet har omhändertagits, d.v.s. att transportören har tillstånd och att det lämnats in på en anläggning som tar emot farligt avfall. '
        ..name = 'Saneringsprotokoll')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Documentation from the company that carried out the remediation, including method used and amount of mercury collected appears. The documentation also shows how the hazardous waste has been disposed of, that is to say. that the carrier has a permit and that it has been submitted to a hazardous waste facility.'
        ..name = 'Remediation protocols'),
    'Torrt sugsystem': new Word()
      ..img_urls = ['pics/dry_suction_system.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Vid torra sugsystem sker separationen av vätska och luft i en vätskeavskiljare (sekretavskiljare) som finns i uniten. Amalgamavskiljaren finns i eller i anslutning till uniten. Utgående vätska efter amalgamavskiljaren ansluter direkt till fastighetens spillavloppssystem, ofta till en golvbrunn. Luften sugs från vätskeavskiljaren till sugmotorn, som betjänar flera unitar. Sugmotorn kan vara placerad på vinden, samma plan som uniten eller på källarplan.'
        ..name = 'Torrt sugsystem')
      ..phrases['en'] = (new Phrases()
        ..description =
            'In dry suction systems, the separation of liquid and air occurs in a liquid separator (secretion separator) located in the unit. The amalgam separator is located in or adjacent to the unit. Outgoing liquid after the amalgam separator connects directly to the property'
            's wastewater system, often to a floor well. The air is sucked from the liquid separator to the suction engine, which serves several units. The suction engine can be located on the wind, the same level as the unit or on the basement level.'
        ..name = 'Dry suction system'),
    'Vattenlås': new Word()
      ..img_urls = ['pics/siphon.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'En sektion av ett vattenrör som är böjt så att en mängd vatten stannar kvar i böjen, tack vare gravitationen, och skiljer luftmassorna på låsets båda sidor. Vattnet i vattenlåset förhindrar på så sätt att dålig lukt, sjukdomar och ohyra från avloppssystemet passerar. På en tandvårdsmottagning finns vattenlås på tvättställ i t ex behandlingsrum, steril och på patienttoalett.'
        ..name = 'Vattenlås')
      ..phrases['en'] = (new Phrases()
        ..description =
            'A section of a water pipe that is bent so that a quantity of water stays in the bow, due to gravity, and separates the air masses on both sides of the lock. The water in the water trap thus prevents bad odors, diseases and waste from the drainage system. At a dental clinic there is a water trap on the washbasin in, for example, treatment rooms, sterile and on the patient'
            's toilet.'
        ..name = 'Siphon'),
    'Vattenprov': new Word()
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Analys av kvicksilverutsläpp i avloppsvattnet. Provet tas efter amalgamavskiljaren.'
        ..name = 'Vattenprov')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Analysis of mercury emissions in wastewater. The sample is taken after the amalgam separator.'
        ..name = 'Water sample'),
    'Utjämningskärl': new Word()
      ..img_urls = ['pics/surge_vessel.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Utjämningskärl på tio liter installeras ofta till diskbänksavskiljare. Det har ingen effekt på amalgamavskiljningen, men medför att man kan spola med ett högre flöde. Genom att använda ett utjämningskärl undviker man att vatten blir stående i vasken.'
        ..name = 'Utjämningskärl')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Ten-liter equalization vessels are often installed in the sink bin. It has no effect on amalgam separation, but allows you to flush with a higher flow. Using a leveling vessel avoids water standing in the sink.'
        ..name = 'Buffer vessel'),
    'Vått sugsystem': new Word()
      ..img_urls = ['pics/wet_suction_system.jpg', 'pics/wet_suction_system_2.jpg']
      ..alts = { 'sv':'Exempel på våta sugsystem med sedimenterande amalgamavskiljning.'}
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Flera behandlingsstolar är kopplade till en sedimenterande amalgamavskiljare. Luft och sekret avleds i ett separat vakuumrörsystem från en eller flera behandlingsstolar till en central vätskeavskiljare (sekretkärl) där luft och vätska separeras. Den centrala enheten är ofta placerad i våningen under klinikplanet. Vätskan avleds till amalgamavskiljare och eventuellt via bufferttank till fastighetens spillvattenavlopp. Luften sugs till ingående sugmotor.'
        ..name = 'Vått sugsystem')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Several treatment chairs are connected to a sedimentary amalgam separator. Air and secretion are diverted into a separate vacuum tube system from one or more treatment chairs to a central liquid separator (secretion vessel) where air and liquid are separated. The central unit is often placed in the floor below the clinic. The liquid is diverted to amalgam separator and possibly via buffer tank to the property''s wastewater drain. The air is sucked to the inlet suction motor.'
        ..name = 'Wet suction system'),
  };
}
