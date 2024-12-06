class IddModel {
  String? root;
  List<String>? suffixes;

  IddModel({this.root, this.suffixes});

  IddModel.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    suffixes = json['suffixes'].cast<String>();
  }
}