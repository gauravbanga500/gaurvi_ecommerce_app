import 'package:flutter/material.dart';

class ProductAttribute extends StatelessWidget {

   List<Map<String,dynamic>> productAttribute = [

     {
       'name' : "Silver",
     },

     {
       'name' : "Gold",
     }


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productAttribute.length,
          itemBuilder: (context, index){
          return Container(
            height: 80,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey
            ),
            child: Center(child: Text("${productAttribute[index]['name']}")),
          );
      }),
    );
  }
}
