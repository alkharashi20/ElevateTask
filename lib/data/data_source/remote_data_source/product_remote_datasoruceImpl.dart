import 'package:either_dart/src/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/data/Api_Services.dart';
import 'package:elevatetask1/data/data_source/remote_data_source/product_remote_datasource.dart';
import 'package:elevatetask1/data/model/product_dto.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: productRemote)

class ProductRemoteImpl extends productRemote{
  ApiServices apiServices;
  ProductRemoteImpl({required this.apiServices});
  @override
  Future<Either<Failures, ProductDto>> getproducts()async {
 try {
   var response= await apiServices.get();
   var product=ProductDto.fromJson(response.data);
   return Right(product);
 } on Exception catch (e) {
   return Left(Failures(errormsg: e.toString()));
 }
 
  }

}