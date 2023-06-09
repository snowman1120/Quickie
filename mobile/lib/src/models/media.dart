import 'package:global_configuration/global_configuration.dart';

class Media {
  String id;
  String name;
  String url;
  String thumb;
  String icon;
  String size;

  Media({String id, String url, String thumb, String icon}) {
    this.id = id ?? "";
    this.url = url ??"${GlobalConfiguration().getValue('base_url')}images/image_default.png";
    this.thumb = thumb ??"${GlobalConfiguration().getValue('base_url')}images/image_default.png";
    this.icon = icon ?? "${GlobalConfiguration().getValue('base_url')}images/image_default.png";
  }


  Media.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      id = jsonMap['id'].toString();
      name = jsonMap['name'];
      url = jsonMap['url'];
      thumb = jsonMap['thumb'];
      icon = jsonMap['icon'];
      size = jsonMap['formated_size'];
    } catch (e) {
      url = "${GlobalConfiguration().getValue('base_url')}images/image_default.png";
      thumb = "${GlobalConfiguration().getValue('base_url')}images/image_default.png";
      icon = "${GlobalConfiguration().getValue('base_url')}images/image_default.png";
      print(e);
    }
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["name"] = name;
    map["url"] = url;
    map["thumb"] = thumb;
    map["icon"] = icon;
    map["formated_size"] = size;
    return map;
  }

  @override
  bool operator ==(dynamic other) {
    return other.url == this.url;
  }

  @override
  int get hashCode => this.url.hashCode;

  @override
  String toString() {
    return this.toMap().toString();
  }
}
