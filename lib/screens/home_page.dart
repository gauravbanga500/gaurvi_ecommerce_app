import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/bottom_navigation.dart';
import 'package:ecommerce_app/widgets/category_list.dart';
import 'package:ecommerce_app/widgets/home_product.dart';
import 'package:ecommerce_app/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),

      body: SingleChildScrollView(
        child: Column(
           children: [
             Container(
               height: 85,
               padding: EdgeInsets.all(15),
               child: TextField(
                 controller: searchController,
                 decoration: InputDecoration(
                   hintText: "Search...",
                   suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.filter_list),),
                   prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined),),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(50),
                     )
                 ),
               ),
             ),

             ClipRRect(
               borderRadius: BorderRadius.circular(15),
               child: Container(
                 height: 230,
                 width: 350,
                 child: myBannerSlider(),
               ),
             ),

             Container(
               margin: EdgeInsets.only(left: 15),
               height: 100,
               child: CategoryList(),
             ),
             SizedBox(
               height: 15,
             ),

             Padding(
               padding: const EdgeInsets.only(right: 25),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     margin: EdgeInsets.only(left: 20),
                     alignment: Alignment.topLeft,
                       child: Text("Special For You", style: TextStyle(fontSize: 20),)),
                       Text("See All"),
                 ],
               ),
             ),

             Container(
               height: 250,
               width: 400,
              child: HomeProduct(),

             )
           ],
        ),
      ),
       //bottomNavigationBar: BottomNavigationPage(),
    );
  }
}
