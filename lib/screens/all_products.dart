import 'dart:convert';

import 'package:ecommerce_app/api/api_helper.dart';
import 'package:ecommerce_app/api/urls.dart';
import 'package:ecommerce_app/bloc/product_list_bloc.dart';
import 'package:ecommerce_app/bloc/product_list_event.dart';
import 'package:ecommerce_app/bloc/product_list_state.dart';
import 'package:ecommerce_app/models/categories_model.dart';
import 'package:ecommerce_app/models/images_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

import '../models/data_model.dart';
import '../models/product_model.dart';

class AllProducts extends StatefulWidget {
  //const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  late Future<List<ProductListDataModel>> productList;

  @override
  void initState() {
    super.initState();
    //productList = ApiHelper().getApi(url: Urls.productUrl);
    context.read<ProductListBloc>().add(GetProductListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop Now"),
        ),
        body: FutureBuilder(
          future: CategoryData.fetchProduct(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              print("Error Occurred :- ${snapshot.error}");
            }
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                var products = snapshot.data!;
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      var eachProduct = products[index];
                      print("Products List: ${eachProduct.name!.length}");
                      // print("Image:- ${products[index].images!.src}");
                      return Stack(children: [
                        Container(
                          height: 150,
                          width: 300,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    "${eachProduct.images?[0].src}"),
                              )),
                        ),
                        Positioned(
                            top: 150,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                eachProduct.name.toString(),
                                maxLines: 3,
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 15),
                              ),
                            )),
                      ]);
                    });
              }
            }
            return Container();
          },
        )

        // BlocBuilder<ProductListBloc, ProductListState>(
        //   builder: (context, state){
        //     if(state is ProductListLoadingState){
        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     } else if(state is ProductListInternetErrorState){
        //       return Center(
        //         child: Text(state.errorMsg, style: TextStyle(fontSize: 25),),
        //       );
        //     } else if (state is ProductListErrorState){
        //       return Center(
        //         child:  Text(state.errorMsg, style: TextStyle(fontSize: 25, color: Colors.blue),),
        //       );
        //     } else if(state is ProductListLoadedState){
        //       return ListView.builder(
        //           itemCount: state.productListDataModel.name!.length,
        //           itemBuilder: (context, index){
        //             var eachProduct = state.productListDataModel.name;
        //             print("Products List: ${eachProduct!.length}");
        //             return Container(
        //               child: Text(eachProduct[index].toString())
        //             );
        //
        //           });
        //     }
        //     return Container();
        //   },
        // ),
        );
  }
}
