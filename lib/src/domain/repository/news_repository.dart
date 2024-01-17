import 'dart:convert';
import 'package:location/location.dart';
import 'package:news_app/src/core/apis.dart';
import 'package:news_app/src/data/db_service.dart';
import 'package:news_app/src/domain/model/location_model/lat_lang.dart';
import 'package:news_app/src/domain/model/news_model/news_model.dart';
import 'package:news_app/src/domain/model/wheather_model/main_model/main_model.dart';
import 'package:news_app/src/domain/model/wheather_model/name_model/whather_model.dart';
import 'package:news_app/src/domain/model/wheather_model/obhavo.dart';
import 'package:news_app/src/domain/model/wheather_model/sys_model/sys_model.dart';

abstract class NewsRepository {
  Future<List<NewsModel>> fetchAllData(Apis apik);

  Future<List<LatLang>> fetchLatLang(Map<String, String> query);

  Future<List<WhatherModel>> fetchWheather(Map<String, String> query);

  Future<String> fetchCountry(Map<String, String> query);

  Future<List> getLocation();
}

class NewRepositoryImplement implements NewsRepository {
  final Network network;

  const NewRepositoryImplement({required this.network});

  /// #New Method
  @override
  Future<List<NewsModel>> fetchAllData(Apis apik) async {
    String response =
        await network.getMethod(api: Apis.getUrl, query: apik.getQuery) ?? "[]";
    Map item = jsonDecode(response);
    print("===Item: -------$item---------");
    List data = item["articles"];
    print("===DataArticle ----$data----");
    List<NewsModel> value =
        data.map((json) => NewsModel.fromJson(json)).toList();
    print("Value; $value");
    return value;
  }

  /// #Location
  @override
  Future<List<LatLang>> fetchLatLang(Map<String, String> query) async {
    String response =
        await network.getLatMethod(api: Apis.getLocation, query: query) ?? "[]";
    List data = jsonDecode(response);
    List<LatLang> value = data.map((json) => LatLang.fromJson(json)).toList();
    print("Value; $value");
    return value;
  }

  /// #Wheather
  @override
  Future<List<WhatherModel>> fetchWheather(Map<String, String> query) async {
    String response =await network.getWheatherMethod(api: Apis.getWheather, query: query) ??
            "[]";
    Map json = jsonDecode(response) as Map;
    print("===Item3: -------$json---------");
    List data = json["weather"];
    List<WhatherModel> value =
        data.map((json) => WhatherModel.fromJson(json)).toList();
    print("Value; $value");
    return value;
  }


  @override
  Future<String> fetchCountry(Map<String, String> query) async {
    String response = await network.getWheatherMethod(api: Apis.getWheather, query: query) ?? "[]";
    Map json = jsonDecode(response) as Map;
    print("===Sys: -------$json---------");
    String data = json["name"];
    print("Value; $data");
    return data;
  }

    @override
  Future<List> getLocation() async {
     List list =[];
     Location location = Location();
     late bool serviceEnabled;
     late PermissionStatus permissionGranted;
     late LocationData locationData;

      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) serviceEnabled = await location.requestService();
      permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
      }
      locationData = await location.getLocation();
      list.add(locationData.latitude);
      list.add(locationData.longitude);
      print("BuList:::::::$list");
      return list;
     }

}


