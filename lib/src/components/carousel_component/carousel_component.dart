import 'dart:core';
import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
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
      MaterialButtonComponent,
      MaterialIconComponent,
      NgFor,
      NgIf
    ],
    pipes: const[NamePipe] 
    )
class CarouselComponent implements OnInit {
  CarouselComponent(this.sanitizer, this.videoService);

  @override
  void ngOnInit() async {
    final videos = await videoService.getAll();

    while (videos.isNotEmpty) {
      videoTable.add(videos.take(3).toList(growable: false));
      videoTable.last.forEach(videos.remove);
    }
    loaded = true;
  }


  void onVideoClick(Video video) {
    selectedModel = video;
    url = sanitizer.bypassSecurityTrustResourceUrl(selectedModel.url);
  }

  bool loaded = false;
  Video selectedModel;

  String get good_examples => Intl.message('good examples', name: 'good_examples');
  SafeResourceUrl url;
  final List<List<Video>> videoTable = [];
  final VideoService videoService;
  final DomSanitizationService sanitizer;  
}
