class MapModel {
  String? googleMaps;
  String? openStreetMaps;

  MapModel({this.googleMaps, this.openStreetMaps});

  MapModel.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }
}