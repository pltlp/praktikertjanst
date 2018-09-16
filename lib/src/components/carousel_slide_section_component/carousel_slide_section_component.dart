import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';

@Component(
    directives: const [NgIf],
    providers: const [materialProviders],
    selector: 'p-carousel-slide-section',
    styleUrls: const ['carousel_slide_section_component.css'],
    templateUrl: 'carousel_slide_section_component.html',
    pipes: [NamePipe])
class CarouselSlideSectionComponent implements OnChanges {
  CarouselSlideSectionComponent(this.sanitizer, this.msg);

  @override
  void ngOnChanges(Map<String, SimpleChange> changes) {
    if (model != null) {
      dataSrc =
          Intl.message(model .imgSrc, name: model.imgSrc);
      name = Intl.message(model.phrases[msg.currentLanguage].name,
          name: model.phrases[msg.currentLanguage].name);
      url = Intl.message(model.phrases[msg.currentLanguage].url,
          name: model.phrases[msg.currentLanguage].url);
      text = Intl.message(
          model.phrases[msg.currentLanguage].description,
          name: model.phrases[msg.currentLanguage].description);
    }
  }

  void onModelClick(Video model) {
    safeUrl = sanitizer.bypassSecurityTrustResourceUrl(
        (model.phrases[msg.currentLanguage].url));
  }

  @Input()
  Video model;

  String dataSrc;
  String name;
  String url;
  String text;
  Video selectedModel;
  SafeResourceUrl safeUrl;
  final DomSanitizationService sanitizer;
  MessagesService msg;
}
