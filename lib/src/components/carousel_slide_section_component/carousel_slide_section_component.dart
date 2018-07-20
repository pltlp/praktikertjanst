import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:intl/intl.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/model.dart';
import '../../models/video.dart';

@Component(
    directives: const [
      materialDirectives, NgIf
    ],
    providers: const [materialProviders],
    selector: 'p-carousel-slide-section',
    styleUrls: const ['carousel_slide_section_component.css'],
    templateUrl: 'carousel_slide_section_component.html',
    pipes: [NamePipe])
class CarouselSlideSectionComponent implements OnChanges {
  CarouselSlideSectionComponent(this.sanitizer);

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

  /*
   String get main_header => Intl.message('small efforts make a huge difference!',
        name: 'small_efforts_make_a_huge_difference');
   String get learn_more => Intl.message('learn more!',
        name: 'learn_more');
        */
}
