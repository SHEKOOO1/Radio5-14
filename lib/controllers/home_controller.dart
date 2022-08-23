import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../model/radio_model.dart';

class RadioController extends ChangeNotifier {
  RadioController() {
    getData(1);
  }

  List<RadioModel> radioList = [];

  Future<void> getData(int page) async {
    Dio radio = Dio();
    var url =
        'http://156.200.116.154$page';
    var response = await radio.get(url);
    for (var i in response.data['1']) {
      if (page == 1) {
        radioList.add(RadioModel.fromMap(i));
      }
    }
    notifyListeners();
    print(response.data);
  }

}
