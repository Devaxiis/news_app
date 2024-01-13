

import 'dart:convert';

import 'package:news_app/src/core/apis.dart';
import 'package:news_app/src/data/db_service.dart';
import 'package:news_app/src/domain/model/gazeta/gazeta_model.dart';
import 'package:news_app/src/domain/model/location_model/lat_lang.dart';
import 'package:news_app/src/domain/model/news_model/news_model.dart';
import 'package:news_app/src/domain/model/wheather_model/name_model/whather_model.dart';
import 'package:news_app/src/domain/model/wheather_model/obhavo.dart';

abstract class NewsRepository{
  Future<List<NewsModel>> fetchAllData(Apis apik);
  Future<List<LatLang>> fetchLatLang(Map<String,String> query);
  Future<List<WhatherModel>> fetchWheather(Map<String,String> query);
}

class NewRepositoryImplement implements NewsRepository{
  final Network network;

  const NewRepositoryImplement({required this.network});


  /// #New Method
  @override
  Future<List<NewsModel>> fetchAllData(Apis apik)async {
    String response = await network.getMethod(api: Apis.getUrl,query: apik.getQuery)??"[]";
    Map item = jsonDecode(response);
    print("===Item: -------$item---------");
    List data = item["articles"];
    print("===DataArticle ----$data----");
    List<NewsModel> value = data.map((json) => NewsModel.fromJson(json)).toList();
    print("Value; $value");
    return value;
  }

  /// #Location
  @override
  Future<List<LatLang>> fetchLatLang(Map<String,String> query) async{
    String response = await network.getLatMethod(api: Apis.getLocation,query: query)??"[]";
    List data = jsonDecode(response) ;
    List<LatLang> value = data.map((json) => LatLang.fromJson(json)).toList();
    print("Value; $value");
    return value;
  }


  /// #Wheather
  @override
  Future<List<WhatherModel>> fetchWheather(Map<String,String> query) async{
    String response = await network.getWheatherMethod(api: Apis.getWheather, query: query)??"[]";
    Map json = jsonDecode(response) as Map;
    print("===Item3: -------$json---------");
    List data = json["weather"];
    List<WhatherModel> value = data.map((json) => WhatherModel.fromJson(json)).toList();
    print("Value; $value");
    return value;
  }

}