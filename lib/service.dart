import 'dart:convert';
import 'package:flutter/services.dart';
import 'model.dart';

class ServiceClass{
  Future<List> getService() async{
    List datanya = [];

    String json = await rootBundle.loadString("assets/data.json");
    //print(json);
    List datajson = jsonDecode(json);
    datajson.map((value){
    datanya.add(ModelData.fromJson(value));
    }).toList();

    return datanya;
  }
}