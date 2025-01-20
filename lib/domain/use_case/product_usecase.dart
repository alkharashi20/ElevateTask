import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/domain/entities/productEntities.dart';
import 'package:elevatetask1/domain/repoistory/product_repository.dart';
import 'package:injectable/injectable.dart';
@injectable
class productusecase{
  productRepoistory repo;
  productusecase({required this.repo});
  Future<Either<Failures,ProductEntities>>invoke(){
return repo.getallProducts();

  }

}