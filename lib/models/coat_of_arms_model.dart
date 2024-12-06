class CoatOfArmsModel {
  String? png;
  String? svg;

  CoatOfArmsModel({this.png, this.svg});

  CoatOfArmsModel.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }
}