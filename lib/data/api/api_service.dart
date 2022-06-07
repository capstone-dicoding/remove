import 'dart:convert';
import 'package:http/http.dart';
import 'package:remove/data/model/movie.dart';

class ApiService {
  static const String popular = 'popular';
  static const String baseUrl = 'https://api-lk21.herokuapp.com/api/v1/';

  final Client client;

  ApiService(this.client);

  Future<MovieResult> popularMovie() async {
    final response = await client.get(Uri.parse(baseUrl + popular));
    if (response.statusCode == 200) {
      return MovieResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load movie');
    }
  }
}
