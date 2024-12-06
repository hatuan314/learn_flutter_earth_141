class FlagModel {
  String? png;
  String? svg;
  String? alt;

  FlagModel({this.png, this.svg, this.alt});

  FlagModel.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }
}