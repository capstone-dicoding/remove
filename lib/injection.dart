import 'package:remove/data/datasources/db/database_helper.dart';
import 'package:remove/data/datasources/movie/movie_local_data_source.dart';
import 'package:remove/data/datasources/movie/movie_remote_data_source.dart';
import 'package:remove/data/repositories/movie_repository_impl.dart';
import 'package:remove/domain/repositories/movie_repository.dart';
import 'package:remove/domain/usecases/movie/get_movie_detail.dart';
import 'package:remove/domain/usecases/movie/get_movie_recommendations.dart';
import 'package:remove/domain/usecases/movie/get_now_playing_movies.dart';
import 'package:remove/domain/usecases/movie/get_popular_movies.dart';
import 'package:remove/domain/usecases/movie/get_top_rated_movies.dart';
import 'package:remove/domain/usecases/movie/get_watchlist_movies.dart';
import 'package:remove/domain/usecases/movie/get_watchlist_status.dart';
import 'package:remove/domain/usecases/movie/remove_watchlist.dart';
import 'package:remove/domain/usecases/movie/save_watchlist.dart';
import 'package:remove/domain/usecases/movie/search_movies.dart';
import 'package:remove/presentation/provider/movie_detail_notifier.dart';
import 'package:remove/presentation/provider/movie_list_notifier.dart';
import 'package:remove/presentation/provider/movie_search_notifier.dart';
import 'package:remove/presentation/provider/popular_movies_notifier.dart';
import 'package:remove/presentation/provider/top_rated_movies_notifier.dart';
import 'package:remove/presentation/provider/watchlist_movie_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final locator = GetIt.instance;

void init() {
  // provider
  locator.registerFactory(
    () => MovieListNotifier(
      getNowPlayingMovies: locator(),
      getPopularMovies: locator(),
      getTopRatedMovies: locator(),
    ),
  );
  locator.registerFactory(
    () => MovieDetailNotifier(
      getMovieDetail: locator(),
      getMovieRecommendations: locator(),
      getWatchListStatus: locator(),
      saveWatchlist: locator(),
      removeWatchlist: locator(),
    ),
  );
  locator.registerFactory(
    () => MovieSearchNotifier(
      searchMovies: locator(),
    ),
  );
  locator.registerFactory(
    () => PopularMoviesNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => TopRatedMoviesNotifier(
      getTopRatedMovies: locator(),
    ),
  );
  locator.registerFactory(
    () => WatchlistMovieNotifier(
      getWatchlistMovies: locator(),
    ),
  );

  // use case
  locator.registerLazySingleton(() => GetNowPlayingMovies(locator()));
  locator.registerLazySingleton(() => GetPopularMovies(locator()));
  locator.registerLazySingleton(() => GetTopRatedMovies(locator()));
  locator.registerLazySingleton(() => GetMovieDetail(locator()));
  locator.registerLazySingleton(() => GetMovieRecommendations(locator()));
  locator.registerLazySingleton(() => SearchMovies(locator()));
  locator.registerLazySingleton(() => GetWatchListStatus(locator()));
  locator.registerLazySingleton(() => SaveWatchlist(locator()));
  locator.registerLazySingleton(() => RemoveWatchlist(locator()));
  locator.registerLazySingleton(() => GetWatchlistMovies(locator()));

  // repository
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(client: locator()));
  locator.registerLazySingleton<MovieLocalDataSource>(
      () => MovieLocalDataSourceImpl(databaseHelper: locator()));

  // helper
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());

  // external
  locator.registerLazySingleton(() => http.Client());
}
