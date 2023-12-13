
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Container(
          margin: EdgeInsets.only(left: 15),
          height: 30,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.white, size: 20,),
              SizedBox(
                width: 2,
              ),
              Text("4.8",style: TextStyle(color: Colors.white, fontSize: 15),),
            ],
          )
      ),
    );
  }

}