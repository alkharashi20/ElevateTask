import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/domain/entities/product_entities.dart';

abstract class productRepoistory {
  Future<Either<Failures,ProductEntities>> getallProducts();
}