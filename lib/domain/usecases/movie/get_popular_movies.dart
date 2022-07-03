import 'package:dartz/dartz.dart';
import 'package:remove/common/failure.dart';
import 'package:remove/domain/entities/movie/movie.dart';
import 'package:remove/domain/repositories/movie_repository.dart';

class GetPopularMovies {
  final MovieRepository repository;

  GetPopularMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getPopularMovies();
  }
}
