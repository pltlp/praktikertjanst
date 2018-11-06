import 'dart:core';
import 'package:angular_components/angular_components.dart';
import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';
import '../../services/video_service.dart';
import '../carousel_slide_section_component/carousel_slide_section_component.dart';

@Component(
    selector: 'p-carousel',
    templateUrl: 'carousel_component.html',
    styleUrls: const [
      'carousel_component.css'
    ],
    providers: const [
      VideoService,
    ],
    directives: const [
      CarouselSlideSectionComponent,
      FoCarouselComponent,
      FoCarouselSlideComponent,
      FoModalComponent,
      NgFor,
      NgIf,
      MaterialButtonComponent,       
    ],
    pipes: const [
      NamePipe
    ])
class CarouselComponent implements OnInit {
  CarouselComponent(this.sanitizer, this.videoService, this.msg);

  @override
  void ngOnInit() {
    oneModelPerElementList.addAll(models);
    while (models.isNotEmpty) {      
      modelTable.add(models.take(3).toList(growable: false));
      modelTable.last.forEach(models.remove);
    }    
  }

  void onModelClick(Video model) {
    selectedModel = model;    
    if (selectedModel != null){
      selectedModelUrl = sanitizer.bypassSecurityTrustResourceUrl(
          selectedModel.url[msg.currentLanguage]);      
    }
    else selectedModelUrl = null;
  }

  @Input('header')
  String header;

  @Input('models')
  List<Video> models = [];
  List<Video> oneModelPerElementList = [];

  Video selectedModel;
  SafeResourceUrl selectedModelUrl;

  final List<List<Video>> modelTable = [];
  final VideoService videoService;
  final MessagesService msg;
  final DomSanitizationService sanitizer;  
}
