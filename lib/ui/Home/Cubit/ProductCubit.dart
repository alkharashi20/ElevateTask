import 'package:elevatetask1/domain/entities/productEntities.dart';
import 'package:elevatetask1/domain/use_case/product_usecase.dart';
import 'package:elevatetask1/ui/Home/Cubit/Product_States.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
@injectable
class ProductCubit extends Cubit<Product_States> {
  List  Pro = [];
  productusecase Productusecase;
  ProductCubit({required this.Productusecase}):super(InitialProduct_States());
  void getproducts()async{
    emit(IsLoadingProduct_States());
   var either= await Productusecase.invoke();

either.fold((l){emit(FailureProduct_States());}
    ,(r) {
  Pro= r.products!;

emit(SuccessProduct_States(productEntities:r ));
    });
  }

}