import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/model.dart';
import '../../models/video.dart';

@Component(
    directives: const [
      NgIf
    ],
    providers: const [materialProviders],
    selector: 'p-carousel-slide-section',
    styleUrls: const ['carousel_slide_section_component.css'],
    templateUrl: 'carousel_slide_section_component.html',
    pipes: [NamePipe])
class CarouselSlideSectionComponent implements OnChanges {
  CarouselSlideSectionComponent(this.sanitizer);

  @override
  void ngOnChanges(Map<String, SimpleChange> changes) {
    if (model is Video) {
      dataSrc = (model as Video).imgSrc;
      name = (model as Video).name;
      url = (model as Video).url;
      text = (model as Video).desc;
    }
  }

  void onVideoClick(Video video) {
    safeUrl = sanitizer.bypassSecurityTrustResourceUrl((model as Video).url);
  }

  @Input()
  Model model;
  String dataSrc;
  String name;
  String url;
  String text;
  Video selectedModel;
  SafeResourceUrl safeUrl;
  final DomSanitizationService sanitizer;
}
