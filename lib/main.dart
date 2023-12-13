import 'package:ecommerce_app/api/api_helper.dart';
import 'package:ecommerce_app/bloc/product_list_bloc.dart';
import 'package:ecommerce_app/screens/all_products.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/product_page.dart';
import 'package:ecommerce_app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => ProductListBloc(apiHelper: ApiHelper()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNavigationPage(),
    );
  }
}

