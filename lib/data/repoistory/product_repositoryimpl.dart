import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/data/data_source/remote_data_source/product_remote_datasource.dart';
import 'package:elevatetask1/domain/entities/product_entities.dart';
import 'package:elevatetask1/domain/repoistory/product_repository.dart';

 class productRepositoryimpl implements productRepoistory{
   productRemote get;
   productRepositoryimpl({required this.get});
  @override
  Future<Either<Failures, ProductEntities>> getallProducts()async {
  var either = await get.getproducts();
  return either.fold((l)=>Left(l), (r)=>Right(r));

  }


}