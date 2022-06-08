import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:remove/common/result_state.dart';
import 'package:remove/data/api/api_service.dart';
import 'package:remove/data/model/movie.dart';
import 'package:remove/data/provider/movie_provider.dart';

class MovieDashboard extends StatelessWidget {
  const MovieDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieProvider>(
        create: (_) =>
            MovieProvider(apiService: ApiService(Client()), client: ''),
        child: Scaffold(
          body: SafeArea(
            child: Consumer<MovieProvider>(builder: (context, state, _) {
              if (state.state == ResultState.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.state == ResultState.hasData) {
                Movie movieData = state.result.movie;
                return const Expanded(
                  child: Center(
                    child: Center(
                      child: Text('GET DATAA'),
                    ),
                  ),
                );
                // return DetailResto(
                //   restoData: restoData,
                //   resto: resto,
                // );
              } else if (state.state == ResultState.noData) {
                return const Expanded(
                  child: Center(
                    child: Center(
                      child: Text('no internet'),
                    ),
                  ),
                );
              } else if (state.state == ResultState.error) {
                return const Expanded(
                  child: Center(
                    child: Text('Errorrr'),
                  ),
                );
              } else {
                return const Center(child: Text(''));
              }
            }),
          ),
        ));
  }
}
