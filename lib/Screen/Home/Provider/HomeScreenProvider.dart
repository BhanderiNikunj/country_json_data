import 'dart:convert';

import 'package:country_json_data/Screen/Home/Model/HomeScreenModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class HomeScreenProvider extends ChangeNotifier {
  List<dynamic> CountryList = [];

  Future<void> FormJson() async {

      String jsonString = await rootBundle.loadString("Assets/Json/country.json");

      var Json = jsonDecode(jsonString);

      CountryList = Json.map((e) => CountryModel().nameFromJson(e)).toList();
      notifyListeners();
  }
}
