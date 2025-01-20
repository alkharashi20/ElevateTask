import 'package:elevatetask1/ui/Home/Home_Screen.dart';
import 'package:elevatetask1/ui/Home/Product_Deatils/Product_Deatils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    initialRoute: HomeScreen.RouteName,
      routes: {
      HomeScreen.RouteName:(context)=>HomeScreen(),
        ProductDeatils.RouteName:(context)=>ProductDeatils()

      },
    );
  }
}
