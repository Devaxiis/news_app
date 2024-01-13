 class Apis{

  static const String baseUrl = "newsapi.org";
  static const String baseUrlLocation = "api.openweathermap.org";


  static const String getUrl ="/v2/everything";
  static const String getLocation ="/geo/1.0/direct";
  static const String getWheather ="/data/2.5/weather";


  final d = DateTime.now();
  Map<String,String> get getQuery => {
    "q":"tesla",
    "from":"2023-12-${d.day}",
    "sortBy":"publishedAt",
    "apiKey":"b7199e3f6274404f8e17571e04aa6b0e",
  };

  Map<String,String> get getLocationQuery => {
    "q":"Toshkent",
    "limit":"1",
    "appid":"b3a4e5ad58628b1a96b83f1add25bf16",
  };
  Map<String,String> get getWheatherQuery => {
    "lat":"",
    "lon":"",
    "appid":"b3a4e5ad58628b1a96b83f1add25bf16",
  };

  static const Map<String,String> header = {
    'x-api-key': 'b3a4e5ad58628b1a96b83f1add25bf16',
  };


  static final String tokenNews = "b7199e3f6274404f8e17571e04aa6b0e";
  static final String tokenLocation = "b3a4e5ad58628b1a96b83f1add25bf16";
}