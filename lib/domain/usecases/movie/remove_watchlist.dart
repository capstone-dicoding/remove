import 'package:dartz/dartz.dart';
import 'package:remove/common/failure.dart';
import 'package:remove/domain/entities/movie/movie_detail.dart';
import 'package:remove/domain/repositories/movie_repository.dart';

class RemoveWatchlist {
  final MovieRepository repository;

  RemoveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(MovieDetail movie) {
    return repository.removeWatchlist(movie);
  }
}
