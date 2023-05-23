class MapInfo {
  double latitude;
  double longitude;
  double zoom;

  MapInfo();

  MapInfo.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      latitude = jsonMap['latitude'];
      longitude = jsonMap['longitude'];
      zoom = jsonMap['zoom'];
    } catch (e) {
      latitude = 0;
      longitude = 0;
      zoom = 0;
      print(e);
    }
  }
}
