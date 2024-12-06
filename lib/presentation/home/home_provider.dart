import 'package:earth_141/models/country_model.dart';
import 'package:flutter/material.dart';

import '../../apis/apis.dart';

class HomeProvider with ChangeNotifier {
  List<CountryModel>? asiaCountries;
  bool loaded = true;
  Apis api = Apis();

  Future<void> getAsiaCountries() async {
    loaded = true;
    notifyListeners();
    final response = await api.getCountriesByRegion("asia");
    asiaCountries = [];
    for (var countriesObjMap in response) {
      final country = CountryModel.fromJson(countriesObjMap);
      asiaCountries!.add(country);
    }
    print('HomeProvider: ${asiaCountries!.length}');
    loaded = false;
    notifyListeners();
  }
}