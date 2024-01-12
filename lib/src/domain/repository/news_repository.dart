

import 'dart:convert';

import 'package:news_app/src/core/apis.dart';
import 'package:news_app/src/data/db_service.dart';
import 'package:news_app/src/domain/model/gazeta/gazeta_model.dart';
import 'package:news_app/src/domain/model/location_model/lat_lang.dart';
import 'package:news_app/src/domain/model/news_model/news_model.dart';

abstract class NewsRepository{
  Future<List<NewsModel>> fetchAllData(Apis apik);
  Future<List<LatLang>> fetchLatLang(Apis apik);
}

class NewRepositoryImplement implements NewsRepository{
  final Network network;

  const NewRepositoryImplement({required this.network});

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

  @override
  Future<List<LatLang>> fetchLatLang(Apis apik) async{
    String response = await network.getLatMethod(api: Apis.getLocation,query: apik.getLocationQuery)??"[]";
    List data = jsonDecode(response) ;
    print("===Item2: -------$data---------");
    List<LatLang> value = data.map((json) => LatLang.fromJson(json)).toList();
    print("Value; $value");
    return value;
  }

}