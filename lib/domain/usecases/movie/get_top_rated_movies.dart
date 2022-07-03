import 'package:dartz/dartz.dart';
import 'package:remove/common/failure.dart';
import 'package:remove/domain/entities/movie/movie.dart';
import 'package:remove/domain/repositories/movie_repository.dart';

class GetTopRatedMovies {
  final MovieRepository repository;

  GetTopRatedMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getTopRatedMovies();
  }
}
