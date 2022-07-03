import 'package:dartz/dartz.dart';
import 'package:remove/domain/entities/movie/movie.dart';
import 'package:remove/domain/repositories/movie_repository.dart';
import 'package:remove/common/failure.dart';

class GetWatchlistMovies {
  final MovieRepository _repository;

  GetWatchlistMovies(this._repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return _repository.getWatchlistMovies();
  }
}
