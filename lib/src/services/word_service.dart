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
      ..img_urls = [
        'pics/amalgam_separator.jpg',
        'pics/amalgam_separators_dry_system.jpeg'
      ]
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
            'A device which collects amalgam particles in the water used in dental treatment before it reaches the drain. By means of filtration, sedimentation, centrifuging or a combination of these methods the amalgam is separated and retained in the container. The amalgam is subsequently handled as environmentally hazardous waste. Amalgam separators can be built into a unit or located where they can be connected to multiple units.'
        ..name = 'Amalgam Separator'),
    
    
    'Backventil': new Word()
      ..img_urls = ['pics/check_valve.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'I våta system måste det finnas en backventil efter amalgamavskiljaren för att undvika baksug.'
        ..name = 'Backventil')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Wet systems must incorporate a check valve ahead of the amalgam separator in order to prevent backflow.'
        ..name = 'Non-return valve'),
    
    
    'Dentalt amalgam': new Word()
      ..img_urls = ['pics/dental_amalgam.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Amalgam som fram till år 2009 var tillåtet som tandfyllnadsmaterial i Sverige. Består av kvicksilver (40-50%), silver (20-35%), tenn (12-15%) koppar (5-15%), zink (2%).'
        ..name = 'Dentalt amalgam')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Amalgam which, up until 2009, was permitted for use as dental filling material in Sweden. Consists of mercury (40-50%), silver (20-35%), tin (12-15%), copper (5-15%) and zinc (2%)'
        ..name = 'Dental amalgam'),
    
    
    'Diskbänksavskiljare': new Word()
      ..img_urls = ['pics/sink_separator.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Amalgamavskiljare som fångar upp amalgampartiklar i det vatten som används vid vask för rengöring av instrument och övrig utrustning som har varit i kontakt med amalgam, innan de diskas/steriliseras i diskdesinfektor och autoklav.'
        ..name = 'Diskbänksavskiljare')
      ..phrases['en'] = (new Phrases()
        ..description =
            'A dental amalgam separator which captures amalgam particles in the water which is used in the cleaning of dental instruments and other equipment which has been in contact with amalgam prior to being washed/sterilised in a disinfector and autoclave.'
        ..name = 'Sink trap'),
    
    
    
    'Föravskiljare': new Word()
      ..img_urls = ['pics/amalgam_pre_separators.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Föravskiljare Installeras innan amalgamavskiljare för att fånga upp större partiklar som skulle kunna blockera efterföljande amalgamavskiljare.'
        ..name = 'Föravskiljare')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Pre-separator Installed ahead of the dental amalgam separator in order to collect large particles which have the potential to block the dental amalgam separator which it feeds.'
        ..name = 'Pre-separator'),
    
    
    
    'Godkänd avfallsbehållare': new Word()
      ..img_urls = ['pics/approved_waste_container.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Behållare för riskavfall såsom kvicksilver ska vara UN-godkänd och uppfylla kraven för transport av farligt avfall. UN-nummer är ett identifieringsnummer för farligt gods.'
        ..name = 'Godkänd avfallsbehållare')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Containers for hazardous waste such as mercury must be UN-certified and fulfil requirements for transportation of hazardous waste. The UN number is an identification number for hazardous materials.'
        ..name = 'Approved waste container'),
    
    
    
    'Grovsil / Salivsugfilter / Partikelfälla': new Word()
      ..img_urls = ['pics/particle_filter.png']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'För  att  förbättra  amalgamavskiljarens  funktion  och  ta  bort  större  fasta  partiklar  är  unitens  sug  utrustad  med  grovsil/salivsugfilter  eller  partikelfälla.  Den  sistnämnda  är  av  engångstyp.'
        ..name = 'Grovsil / Salivsugfilter / Partikelfälla')
      ..phrases['en'] = (new Phrases()
        ..description =
            'In order to improve the functioning of the amalgam separator and remove large solid particles, the unit’s suction unit is equipped with a coarse strainer/saliva suction filter or a particulate trap.  The latter is of the disposable variety.'
        ..name = 'Coarse strainer/saliva suction filter/particle trap'),
   
   
    'Kompressor': new Word()
      ..img_urls = ['pics/compressor.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Kompressor är ett aggregat som tar luft från omgivningen, pressar ihop den med hjälp av en motor och lagrar den komprimerade luften i en tank (tryckkärl/behållare). Den komprimerade luften kan sen användas vid behov genom att dras via luftrör/slangar till den plats där t. ex. tandläkarutrustningen är placerad. Tryckluft används bl. a. för att kunna driva turbiner/hand/vinkelstycket och för att blåsa rent vid behandlingar.'
        ..name = 'Kompressor')
      ..phrases['en'] = (new Phrases()
        ..description =
            'A compressor is a unit which takes air from its surroundings, compresses it using a motor and stores it in a tank (pressurised). The compressed air can then be used when needed via an air hose leading to where e.g. dental equipment is located. Compressed air is used to power turbines and implements and to clear saliva and debris during treatment.'
        ..name = 'Compressor'),
    
    
    
    'Pumpbox': new Word()
      ..img_urls = ['pics/pumpbox.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Installeras för att förflytta vatten, från sekretkärl/bufferttank eller där flödesfall ej är tillräckligt.'
        ..name = 'Pumpbox')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Installed in order to transfer water from a secretion tank/buffer tank or where the flow of water is insufficient.'
        ..name = 'Pump box'),
    
    
    'Sanering': new Word()
      ..img_urls = ['pics/decontamination.jpg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Vid en sanering högtrycksspolas kvicksilverförorenade avloppsrör och vattenlås och golvbrunnar töms och rengörs. Amalgamslammet och spolvattnet omhändertas som farligt avfall av företag som har tillstånd att transportera detta. Rören blir aldrig helt rena från kvicksilver och måste därför märkas upp så att de omhändertas som farligt avfall vid demontering. Driftsaneringar ska göras regelbundet. I samband med att en mottagning läggs ned görs en så kallad nedläggningssanering, vilket innebär att man demonterar sugledningar och pluggar igen spolpunkter för att inget kvicksilver ska rinna ut i avloppet.'
        ..name = 'Sanering')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Decontamination involves pressure-washing drainpipes and emptying/cleaning water locks and floor drains contaminated with mercury,  Amalgam slurry and water from the pressure washer are treated as hazardous waste by companies authorised to transport them. The pipe is never quite free of mercury and therefore has to be labelled for handling as hazardous waste when dismantled. Decontamination must be performed regularly. When a dental practice closes down, a final decontamination is performed, which involves dismantling suction pipes and plugging rinsing points to prevent mercury getting into the drains.'
        ..name = 'Decontamination'),
    
    
    'Saneringsprotokoll': new Word()
      ..img_urls = ['pics/remidiation_protocol.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Dokumentation från företaget som utfört saneringen där bl.a. metod som använts och mängd insamlat kvicksilver framgår. I dokumentationen syns också hur det farliga avfallet har omhändertagits, d.v.s. att transportören har tillstånd och att det lämnats in på en anläggning som tar emot farligt avfall. '
        ..name = 'Saneringsprotokoll')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Documentation recorded by the practice concerning decontamination carried out, including the method used and the quantity of mercury collected. The documentation also covers how hazardous waste is dealt with, i.e. that the transporter is authorised and that it is taken to a facility licensed to receive hazardous waste.'
        ..name = 'Decomtamination protocol'),
    
    
    'Torrt sugsystem': new Word()
      ..img_urls = ['pics/amalgam_separators_dry_system.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Vid torra sugsystem sker separationen av vätska och luft i en vätskeavskiljare (sekretavskiljare) som finns i uniten. Amalgamavskiljaren finns i eller i anslutning till uniten. Utgående vätska efter amalgamavskiljaren ansluter direkt till fastighetens spillavloppssystem, ofta till en golvbrunn. Luften sugs från vätskeavskiljaren till sugmotorn, som betjänar flera unitar. Sugmotorn kan vara placerad på vinden, samma plan som uniten eller på källarplan.'
        ..name = 'Torrt sugsystem')
      ..phrases['en'] = (new Phrases()
        ..description =
            'In the case of a dry suction system the separation of liquid and air takes place in a liquid separator (secretion separator) located in the unit. The amalgam separator is located at, or is connected to, the unit. Outgoing liquid after the amalgam separator is directly connected to the facility’s waste water drain, typically a floor drain. The air is extracted from the liquid separator by a suction motor which serves multiple units. The suction motor may be situated in the loft, on the same floor as the unit or in the basement.'
        ..name = 'Dry suction system'),
    
    
    'Utjämningskärl': new Word()
      ..img_urls = ['pics/surge_vessel_2.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Utjämningskärl på tio liter installeras ofta till diskbänksavskiljare. Det har ingen effekt på amalgamavskiljningen, men medför att man kan spola med ett högre flöde. Genom att använda ett utjämningskärl undviker man att vatten blir stående i vasken.'
        ..name = 'Utjämningskärl')
      ..phrases['en'] = (new Phrases()
        ..description =
            'A 10-litre surge tank is typically installed in connection with a sink trap. This has no effect on the amalgam separation process, but allows for sluicing at a higher flow rate. The use of a surge tank makes it possible to avoid water remaining in the sink.'
        ..name = 'Surge tank'),
    
    
    'Vattenlås': new Word()
      ..img_urls = ['pics/siphon.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'En sektion av ett vattenrör som är böjt så att en mängd vatten stannar kvar i böjen, tack vare gravitationen, och skiljer luftmassorna på låsets båda sidor. Vattnet i vattenlåset förhindrar på så sätt att dålig lukt, sjukdomar och ohyra från avloppssystemet passerar. På en tandvårdsmottagning finns vattenlås på tvättställ i t ex behandlingsrum, steril och på patienttoalett.'
        ..name = 'Vattenlås')
      ..phrases['en'] = (new Phrases()
        ..description =
            'A section of a water pipe which is curved such that a quantity of water comes to a standstill in the bend by means of gravity and separates the pockets of air on either side of the trap. In this way the water in the water trap prevents unpleasant odours, disease and vermin from passing through the drainage system. Water traps in dental practices are fitted in washbasins e.g. in the treatment room, sterilisation areas and in the patient toilet.'
        ..name = 'Water trap'),
    
    
    'Vattenprov': new Word()
      ..img_urls = ['pics/water_sample.jpeg']
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Analys av kvicksilverutsläpp i avloppsvattnet. Provet tas efter amalgamavskiljaren.'
        ..name = 'Vattenprov')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Analysis of mercury emissions in waste water. Samples are taken after the water has passed through the amalgam separator.'
        ..name = 'Water sampling'),
    
    
    'Vått sugsystem': new Word()
      ..img_urls = [
        'pics/wet_suction_system.jpg',
        'pics/wet_suction_system_2.jpg'
      ]
      ..alts = {
        'sv': 'Exempel på våta sugsystem med sedimenterande amalgamavskiljning.'
      }
      ..phrases['sv'] = (new Phrases()
        ..description =
            'I ett vått sugsystem är en eller flera behandlingsstolar kopplade till ett vakuumrörsystem där luft och vätska transporteras till den centrala sugutrustningen. I utrustningen separeras luft och vatten. Vattnet avleds vidare via amalgamavskiljare och luften går vidare via sugmotorn. Denna typ av sugutrustning kan installeras på samma plan som kliniken, men rekommendation är att installation görs på våningen under då det är lättare att uppnå bästa möjliga driftförutsättningar.'
        ..name = 'Vått sugsystem')
      ..phrases['en'] = (new Phrases()
        ..description =
            'In a wet suction system, one or more treatment chairs are linked to a vacuum pipe system in which air and liquids are carried to the central suction system. Air and water are separated in the equipment. Water is passed onwards via the amalgam separator and the air via the suction motor. This type of suction equipment can be installed on the same floor as the clinic, but installation is recommended on the floor below to ensure the best possible operating conditions.'
        ..name = 'Wet section system'),
  };
}
