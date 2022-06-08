import 'dart:async';
import 'package:flutter/material.dart';
import 'package:remove/common/result_state.dart';
import 'package:remove/data/api/api_service.dart';

class MovieProvider extends ChangeNotifier {
  final ApiService apiService;

  MovieProvider({required this.apiService, required String client}) {
    fetchAllMovie();
  }

  dynamic _movie;
  late ResultState _state;
  String _message = '';

  String get message => _message;

  dynamic get result => _movie;

  ResultState get state => _state;

  Future<dynamic> fetchAllMovie() async {
    try {
      _state = ResultState.loading;
      notifyListeners();
      final move = await apiService.popularMovie();
      if (move.movie.isEmpty) {
        _state = ResultState.noData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.hasData;
        notifyListeners();
        return _movie = move;
      }
    } catch (e) {
      _state = ResultState.error;
      notifyListeners();
      return _message = 'Error --> $e';
    }
  }
}
