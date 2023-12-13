import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/api/api_helper.dart';
import 'package:ecommerce_app/bloc/product_list_bloc.dart';
import 'package:ecommerce_app/bloc/product_list_state.dart';
import 'package:ecommerce_app/models/categories_model.dart';
import 'package:ecommerce_app/models/data_model.dart';
import 'package:ecommerce_app/models/single_product_model.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:ecommerce_app/widgets/product_attribute.dart';
import 'package:ecommerce_app/widgets/product_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/product_model.dart';

class ProductPage extends StatefulWidget {

  String name;
  int id;
  final SingleProductModel singleProduct;

  ProductPage({required this.name, required this.id,  required this.singleProduct});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productScreenAppBar(),
      body:   FutureBuilder(future: CategoryData.getSingleProduct(widget.id), builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        } else if(snapshot.hasError){
          return Center(child: Text("${snapshot.error.toString()}"),);
        } else if(snapshot.hasData){
          if(snapshot.data != null){
            var products = snapshot.data!;
            var eachProduct = products.name;
            return Column(
              children: [
                CarouselSlider.builder(
                    itemCount: products.images?.length,
                    itemBuilder: (context,  int index, int pageViewIndex) => Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        image: DecorationImage(
                          image: NetworkImage("${products.images![index].src}")
                        )
                      )
                    ),
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds:  3),
                      height: 250,
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text("${eachProduct}",style: TextStyle(fontSize: 22),),
                ),
                ProductRating(),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Text("Choose Type", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                SizedBox(
                  height: 10,
                ),
                ProductAttribute(),
              ],
            );
          }
        }
        return Container();
      })
    );
  }

}
// BlocBuilder<ProductListBloc, ProductListState>(builder: (context, state){
// if(state is ProductListLoadedState){
// return Center(
// child: CircularProgressIndicator(),
// );
// } else if(state is ProductListErrorState){
// return Center(child: Text(state.errorMsg),);
// } else if(state is ProductListInternetErrorState){
// return Center(child: Text(state.errorMsg),);
// } else if(state is ProductListLoadedState){
// return GridView.builder(
// itemCount: state.productListDataModel.name!.length,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// childAspectRatio: 9/16
// ), itemBuilder: (context, index){
// var eachProduct = state.productListDataModel.id!;
// print(eachProduct);
// return Container(
// height: 150,
// color: Colors.blue,
// child: Text(eachProduct.toString()),
// );
// });
// } return Container();
// },)