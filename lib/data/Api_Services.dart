import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/domain/entities/product_entities.dart';

class ApiServices{
  Dio dio = Dio();
  Future<Either<Failures,ProductEntities>> get()async{
     var response= await dio.get('https://fakestoreapi.com/products');
     return  response.data;


  }


}