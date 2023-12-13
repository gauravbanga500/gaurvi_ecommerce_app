import 'package:ecommerce_app/api/api_helper.dart';
import 'package:ecommerce_app/models/data_model.dart';
import 'package:ecommerce_app/models/single_product_model.dart';
import 'package:ecommerce_app/screens/product_page.dart';
import 'package:ecommerce_app/widgets/product_clipper.dart';
import 'package:flutter/material.dart';

import '../models/categories_model.dart';

class HomeProduct extends StatelessWidget {


  List<Map<String,dynamic>> homeProductList = [

    {
      "image" : "assets/category/pendants.webp",
      "name"  : "Diamond Pendant",
      "price" : "₹ 499",

    },
    {
      "image" : "assets/category/earrings.jpg",
      "name"  : "Diamond Earrings",
      "price" : "₹ 499",

    },
    {
      "image" : "assets/category/rings.webp",
      "name"  : "Rings",
      "price" : "₹ 499",

    },
    {
      "image" : "assets/category/necklace.jpg",
      "name"  : "NeckLace",
      "price" : "₹ 499",

    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
        future: CategoryData.fetchProduct(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          } else if(snapshot.error != null){
            print(snapshot.error.toString());
          } else if(snapshot.hasData) {
            var products = snapshot.data;
            print(products);
            if(snapshot.data != null){
              return GridView.builder(
                  shrinkWrap: true,
                  itemCount:  products!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ), itemBuilder: (context, index){
                    var eachProduct = snapshot.data![index];
               // print("Product Data :- ${products[index].name.toString()}");
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(name: eachProduct.name!,id: eachProduct.id!, singleProduct: SingleProductModel()),));
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 185,
                        margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.all(85),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("${eachProduct.images?[0].src}"),fit: BoxFit.cover,
                            )
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Text(""))),

                      ClipPath(
                        // clipper: FavoriteClipper(),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25)),
                            ),
                            width: 50,
                            height: 50,

                            margin: EdgeInsets.only(left:131, top: 15),
                            alignment: Alignment.topRight,
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.white,),)),
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 45, left: 20),
                          alignment: Alignment.bottomLeft,
                          child: Text(products[index].name!, style: TextStyle(backgroundColor: Colors.white),)),

                      Container(
                        margin: EdgeInsets.only(bottom: 20, left: 25),
                        alignment: Alignment.bottomLeft,
                        child: Text("₹ ${eachProduct.price}", style: TextStyle(color: Colors.white, backgroundColor: Colors.brown),),
                      ),
                    ],
                  ),
                );
              });
            }
          }
          return Container();
        },
      )
    );
  }
}
