class NameModel {
  String? common;
  String? official;
  Map<String, dynamic>? nativeName;

  NameModel({this.common, this.official, this.nativeName});

  NameModel.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'];
  }
}