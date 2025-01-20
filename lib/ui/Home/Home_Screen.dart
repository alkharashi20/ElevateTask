import 'package:elevatetask1/core/AppColors.dart';
import 'package:elevatetask1/domain/di/di.dart';
import 'package:elevatetask1/ui/Home/Cubit/ProductCubit.dart';
import 'package:elevatetask1/ui/Home/Cubit/Product_States.dart';
import 'package:elevatetask1/ui/Home/Product_Deatils/Product_Deatils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key,});
  static const String RouteName='HomeScreen';
ProductCubit data = getIt<ProductCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit,Product_States>(
        bloc: data..getproducts(),
          builder: (context,state){
if(state is IsLoadingProduct_States){
  return Center(child: CircularProgressIndicator());
}
          else if (state is FailureProduct_States){
            return Text('Error');
}
        return GridView.builder(
          itemCount: data.Pro.length,
          shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,

                crossAxisCount: 2),
             itemBuilder: (BuildContext context, int index) {

          return ProductDeatils(productEntities: data.Pro[index]);

             });
        });
  }
}
