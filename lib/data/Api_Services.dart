import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:injectable/injectable.dart';
@singleton
class ApiServices{
  Dio dio = Dio();
  Future<Response> get()async{
     var response=await   dio.get('https://dummyjson.com/products');
   return response;



  }


}