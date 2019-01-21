import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';
import '../models/trailer_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'a607a9e7b76745de605bcf56fc578e2c';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    try {
      final response = await client
          .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
      print(response.headers.toString());
      if (response.statusCode == 200) {
        return ItemModel.fromJson(json.decode(response.body));
      }
    } catch (e) {
      throw Exception('Failed to load post with $e');
    }
  }

  Future<TrailerModel> fetchTrailer(int movieId) async {
    try {
      final response =
          await client.get("$_baseUrl/$movieId/videos?api_key=$_apiKey");

      if (response.statusCode == 200) {
        return TrailerModel.fromJson(json.decode(response.body));
      }
    } catch (e) {
      throw Exception('Failed to load trailers with $e');
    }
  }
}
