import 'model.dart';

class Video extends Model {
  Video();

  String url;
  String name;
  String imgSrc;
  String desc;

  String get _imgSrc => imgSrc;
  String get _name => name;
  String get _url => url;
  String get _desc => desc;
}
