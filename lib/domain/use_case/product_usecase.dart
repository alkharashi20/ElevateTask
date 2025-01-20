import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/domain/entities/product_entities.dart';
import 'package:elevatetask1/domain/repoistory/product_repository.dart';

class productusecase{
  productRepoistory repo;
  productusecase({required this.repo});
  Future<Either<Failures,ProductEntities>>invoke(){
return repo.getallProducts();

  }

}