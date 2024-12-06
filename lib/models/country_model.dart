import 'package:earth_141/models/postal_code_model.dart';

import 'capital_info_model.dart';
import 'coat_of_arms_model.dart';
import 'flag_model.dart';
import 'idd_model.dart';
import 'map_model.dart';
import 'name_model.dart';

class CountryModel {
  NameModel? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Map<String, dynamic>? currencies;
  IddModel? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  List<double>? latLng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  String? flag;
  MapModel? maps;
  int? population;
  String? fifa;
  List<String>? timezones;
  List<String>? continents;
  FlagModel? flags;
  CoatOfArmsModel? coatOfArms;
  String? startOfWeek;
  CapitalInfoModel? capitalInfo;
  PostalCodeModel? postalCode;

  CountryModel(
      {this.name,
        this.tld,
        this.cca2,
        this.ccn3,
        this.cca3,
        this.cioc,
        this.independent,
        this.status,
        this.unMember,
        this.currencies,
        this.idd,
        this.capital,
        this.altSpellings,
        this.region,
        this.subregion,
        this.latLng,
        this.landlocked,
        this.borders,
        this.area,
        this.flag,
        this.maps,
        this.population,
        this.fifa,
        this.timezones,
        this.continents,
        this.flags,
        this.coatOfArms,
        this.startOfWeek,
        this.capitalInfo,
        this.postalCode});

  CountryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    tld = json['tld'].cast<String>();
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'];
    idd = json['idd'] != null ? IddModel.fromJson(json['idd']) : null;
    capital = json['capital'] != null ? json['capital'].cast<String>() : [];
    altSpellings = json['altSpellings'] != null ? json['altSpellings'].cast<String>() : [];
    region = json['region'];
    subregion = json['subregion'];
    latLng = json['latlng'] != null ? json['latlng'].cast<double>() : [];
    landlocked = json['landlocked'];
    borders = json['borders'] != null ? json['borders'].cast<String>() : [];
    area = json['area'];
    flag = json['flag'];
    maps = json['maps'] != null ? MapModel.fromJson(json['maps']) : null;
    population = json['population'];
    fifa = json['fifa'];
    timezones = json['timezones'] != null ? json['timezones'].cast<String>() : [];
    continents = json['continents'] != null ? json['continents'].cast<String>() : [];
    flags = json['flags'] != null ? FlagModel.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? CoatOfArmsModel.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? CapitalInfoModel.fromJson(json['capitalInfo'])
        : null;
    postalCode = json['postalCode'] != null
        ? PostalCodeModel.fromJson(json['postalCode'])
        : null;
  }
}







