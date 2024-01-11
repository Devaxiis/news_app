class Apis{

  static const String baseUrl = "newsapi.org";

  static const String getUrl ="/v2/everything";

  Map<String,String> get getQuery => {
    "q":"tesla",
    "from":"2023-12-11",
    "sortBy":"publishedAt",
    "apiKey":"b7199e3f6274404f8e17571e04aa6b0e",
  };

    // "Content-Type": "application/json; charset=UTF-8",
  // static const Map<String, String> headers = {
  //   "apiKey":"b7199e3f6274404f8e17571e04aa6b0e",
  // };
  static final String token = "b7199e3f6274404f8e17571e04aa6b0e";
}