class CapitalInfoModel {
  List<double>? latlng;

  CapitalInfoModel({this.latlng});

  CapitalInfoModel.fromJson(Map<String, dynamic> json) {
    latlng = json['latlng'] != null ? json['latlng'].cast<double>() : [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['latlng'] = this.latlng;
    return data;
  }
}