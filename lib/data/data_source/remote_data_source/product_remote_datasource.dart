import 'package:either_dart/either.dart';
import 'package:elevatetask1/Failures.dart';
import 'package:elevatetask1/domain/entities/product_entities.dart';

abstract class productRemote {
  Future<Either<Failures,ProductEntities>> getproducts();

}