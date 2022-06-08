import 'dart:convert';
import 'package:http/http.dart';
import 'package:remove/data/model/movie.dart';

class ApiService {
  static const String films = 'films';
  static const String baseUrl = 'https://ghibliapi.herokuapp.com/';

  final Client client;

  ApiService(this.client);

  Future<MovieResult> popularMovie() async {
    final response = await client.get(Uri.parse(baseUrl + films));
    if (response.statusCode == 200) {
      return MovieResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load movie');
    }
  }
}
