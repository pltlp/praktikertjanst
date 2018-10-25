class Slide {
  Map<String, SlidePhrases> phrases = {};
  String background_image;
  bool external_link = false;
}

class SlidePhrases {
  String paragraph;
  String link;
  String button_label;
}
