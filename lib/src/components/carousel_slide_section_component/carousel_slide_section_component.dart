import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/model.dart';
import '../../models/quick_action.dart';
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
    if (model is Video && model != null) {
      dataSrc = (model as Video).imgSrc;
      name = (model as Video).phrases[msg.currentLanguage].name;
      url = (model as Video).phrases[msg.currentLanguage].url;
      text = (model as Video).phrases[msg.currentLanguage].description;
    }

    if (model is QuickAction && model != null) {
      dataSrc = (model as QuickAction).imgSrc;
      name = (model as QuickAction).phrases[msg.currentLanguage].name;
      url = (model as QuickAction).phrases[msg.currentLanguage].url;
      text = (model as QuickAction).phrases[msg.currentLanguage].description;
    }
  }

  void onModelClick(Model model) {
    safeUrl = sanitizer.bypassSecurityTrustResourceUrl((model.getPhrases()[msg.currentLanguage].url));
  }

  @Input()
  Model model;

  String dataSrc;
  String name;
  String url;
  String text;
  Model selectedModel;
  SafeResourceUrl safeUrl;
  final DomSanitizationService sanitizer;
  MessagesService msg;
}
