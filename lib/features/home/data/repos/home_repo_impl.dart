import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';

import 'package:bookly/features/home/data/models/book_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks()async {
    try{
      var data=await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books=[];

      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch (e){
     if (e is DioError) {
       return left(ServerFailure.fromDioError(dioError: e));
     } return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try{
      var data=await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
      List<BookModel> books=[];

      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch (e){
      if (e is DioError) {
        return left(ServerFailure.fromDioError(dioError: e));
      } return left(ServerFailure(e.toString()));
    }
  }

}