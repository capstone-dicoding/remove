import 'package:dartz/dartz.dart';
import 'package:remove/domain/entities/movie/movie.dart';
import 'package:remove/domain/repositories/movie_repository.dart';
import 'package:remove/common/failure.dart';

class GetNowPlayingMovies {
  final MovieRepository repository;

  GetNowPlayingMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getNowPlayingMovies();
  }
}
