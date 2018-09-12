import 'dart:core';
import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import '../../models/video.dart';
import '../../services/video_service.dart';
import '../carousel_slide_section_component/carousel_slide_section_component.dart';

@Component(
    selector: 'p-carousel',
    templateUrl: 'carousel_component.html',
    styleUrls: const [
      'carousel_component.css'
    ],
    providers: const [
      VideoService
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
  CarouselComponent(this.sanitizer, this.videoService);

  @override
  void ngOnInit() async {
  
    loaded = false;
    
    while (videos.isNotEmpty) {
      videoTable.add(videos.take(3).toList(growable: false));
      videoTable.last.forEach(videos.remove);
    }
    loaded = true;
  }

  void onVideoClick(Video video) {
    selectedModel = video;
  }

  @Input('header')
  String header;
  
  @Input('videos')
  List<Video> videos = [];

  bool loaded = false;
  Video selectedModel;

  final List<List<Video>> videoTable = [];
  final VideoService videoService;
  final DomSanitizationService sanitizer;

}
