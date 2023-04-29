import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class BookRepo{
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}