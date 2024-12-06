class PostalCodeModel {
  String? format;
  String? regex;

  PostalCodeModel({this.format, this.regex});

  PostalCodeModel.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    regex = json['regex'];
  }
}