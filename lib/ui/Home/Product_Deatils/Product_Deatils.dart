import 'package:cached_network_image/cached_network_image.dart';
import 'package:elevatetask1/core/AppColors.dart';
import 'package:elevatetask1/domain/entities/productEntities.dart';
import 'package:elevatetask1/ui/Home/Product_Deatils/ClickBtn.dart';
import 'package:flutter/material.dart';

class ProductDeatils extends StatelessWidget {
  static const String RouteName = 'ProductDeatils';
  ListOfProducts productEntities;
  ProductDeatils({super.key, required this.productEntities});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.5,
      height: height * 0.5,
      decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(18),
          border: Border(
              top: BorderSide(color: AppColors.Bluedark),
              bottom: BorderSide(color: AppColors.Bluedark),
              left: BorderSide(color: AppColors.Bluedark),
              right: BorderSide(color: AppColors.Bluedark))),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: '${productEntities.thumbnail}',
                    width: double.infinity,
                    height: height * 128,
                  ),
                  Positioned(
                      right: 18,
                      top: 12,
                      child: BtnClick(
                        icon: Icons.favorite_outline,
                        color: AppColors.White,
                      )),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: AppColors.Black,
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            maxLines: 1
                        ,                          '${productEntities.title}',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                        
                                overflow: TextOverflow.ellipsis,
                        
                                color: AppColors.White,
                                fontSize: 10,
                               ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            '${productEntities.description}',
                            maxLines: 1,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: AppColors.White,
                                fontSize: 10,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " EGP ${productEntities.price}",
                        style: TextStyle(
                          decoration: TextDecoration.none,

                          color: AppColors.White,
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '%${productEntities.discountPercentage}',
                          style: TextStyle(

                              fontSize: 10,
                              color: AppColors.White,
                              decoration: TextDecoration.lineThrough),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Row(
                      children: [
                        Text(
                          'Review (${productEntities.rating}) ',
                          style:

                              TextStyle(color: AppColors.White, fontSize: 10,decoration: TextDecoration.none),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 15,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: BtnClick(icon: Icons.add, color: AppColors.White),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
