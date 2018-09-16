import 'dart:core';
import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import '../../models/model.dart';
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
      MessagesService
    ],
    directives: const [
      CarouselSlideSectionComponent,
      FoCarouselComponent,
      FoCarouselSlideComponent,
      FoModalComponent,
      NgFor,
      NgIf
    ],
    pipes: const [
      NamePipe
    ])
class CarouselComponent implements OnInit {
  CarouselComponent(this.sanitizer, this.videoService, this.msg);

  @override
  void ngOnInit() async {
  
    loaded = false;
    while (models.isNotEmpty) {
      modelTable.add(models.take(3).toList(growable: false));
      modelTable.last.forEach(models.remove);
    }
    loaded = true;

   headerTranslation =  Intl.message(header, name: header);
  }

  void onModelClick(Model model) {
    selectedModel = model;
  }

  @Input('header')
  String header;
  
  @Input('models')
  List<Model> models = [];

  bool loaded = false;
  Model selectedModel;

  final List<List<Model>> modelTable = [];
  final VideoService videoService;
  final MessagesService msg;
  final DomSanitizationService sanitizer;
  String headerTranslation;

}
