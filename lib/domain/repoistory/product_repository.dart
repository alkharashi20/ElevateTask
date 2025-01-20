import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/domain/entities/productEntities.dart';

abstract class productRepoistory {
  Future<Either<Failures,ProductEntities>> getallProducts();
}