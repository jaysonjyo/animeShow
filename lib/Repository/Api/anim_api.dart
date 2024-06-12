import 'dart:convert';
import 'package:http/http.dart';
import '../ModelClass/AnimeModel.dart';
import 'api_client.dart';

class AnimApi {
  ApiClient apiClient = ApiClient();

  Future<AnimeModel> getanime() async {
    String trendingpath =
        'https://anime-db.p.rapidapi.com/anime?page=1&size=10&search=Fullmetal&genres=Fantasy%2CDrama&sortBy=ranking&sortOrder=asc';
    var body = {};
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return AnimeModel.fromJson(jsonDecode(response.body));
  }
}
