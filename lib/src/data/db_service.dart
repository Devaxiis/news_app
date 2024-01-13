import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/src/core/apis.dart';



abstract class Network{
  Future<String?> getMethod({required String api, String baseUrl = Apis.baseUrl,required Map<String, String> query});
  Future<String?> getLatMethod({required String api, Map<String,String> header,String baseUrl = Apis.baseUrl,required Map<String, String> query});
  Future<String?> getWheatherMethod({required String api,String baseUrl = Apis.baseUrl,required Map<String, String> query});
}


class GetNetwork implements Network{
  const GetNetwork();

  @override
  Future<String?> getMethod({required String api,String baseUrl = Apis.baseUrl,required Map<String, String> query}) async{
    try{
      final Uri url = Uri.https(baseUrl,api,query);
      final response = await http.get(url,);
        print("Response ${response.body}");
      if(response.statusCode == 200){
        print("Response2 ${response.body}");
        return utf8.decoder.convert(response.bodyBytes);
      }
    }catch(e){
      return null;
    }
    return null;
  }

  @override
  Future<String?> getLatMethod({required String api, Map<String,String> header = Apis.header,String baseUrl = Apis.baseUrlLocation, required Map<String, String> query}) async{
    try{
      final Uri url = Uri.https(baseUrl,api,query);
      final response = await http.get(url,headers: header);
      if(response.statusCode == 200){
        print("Response ${response.body}");
        return response.body;
      }
    }catch(e){
      return null;
    }
    return null;
  }

  @override
  Future<String?> getWheatherMethod({required String api, String baseUrl = Apis.baseUrlLocation, required Map<String, String> query})async {
    try{
      final Uri url = Uri.https(baseUrl,api,query);
      print("====Url3===$url");
      final response = await http.get(url,headers: Apis.header);
      if(response.statusCode == 200){
        print("Response ${response.body}");
        return response.body;
      }
    }catch(e){
      return null;
    }
    return null;
  }
}