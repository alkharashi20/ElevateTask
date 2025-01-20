import 'package:elevatetask1/domain/entities/productEntities.dart';

abstract class Product_States {}
 class InitialProduct_States extends Product_States {}
 class IsLoadingProduct_States extends Product_States {}
 class FailureProduct_States extends Product_States {}
 class SuccessProduct_States extends Product_States {
ProductEntities productEntities;
 SuccessProduct_States({required this.productEntities});
 }