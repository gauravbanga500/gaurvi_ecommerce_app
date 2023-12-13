import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_app/api/my_exception.dart';
import 'package:ecommerce_app/api/urls.dart';
import 'package:ecommerce_app/models/categories_model.dart';
import 'package:ecommerce_app/models/data_model.dart';
import 'package:ecommerce_app/models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/single_product_model.dart';

class ApiHelper{
  List<ProductListDataModel> arrProductList = [];
  Future<List<ProductListDataModel>> getApi({required String url, Map<String, String>? mHeader})  async{




   var mData;

   try{
     print(url);
     var res = await http.get(Uri.parse(Urls.productUrl),
       //  var res = await http.get(Uri.parse("${Urls.productUrl}consumer_keys=${Urls.consumerKey}&consumer_secret=${Urls.consumerSecret}"),
     // headers: mHeader ??{
     //   "consumer_key" : consumer_key,
     //   "consumer_secret" : consumer_secret,
     // }
     );
     mData = returnDataResponse(res);
     print(res.body);
   } on SocketException{
      // return FetchDataException(body: "Internet Error");
   }

   return mData;

  }

  dynamic returnDataResponse(http.Response res){


   switch(res.statusCode){
     case 200 :

      // var mData = jsonDecode(res.body);
      //  for(Map<String,dynamic> eachProduct in mData){
      //    arrProductList.add(ProductListDataModel.fromJson(eachProduct));
      //  }
       var mData = (res.body as List).map((e) => ProductListDataModel.fromJson(e)).toList();
       print("Data :- ${mData}");
       //return jsonDecode(mData);
        return mData;


     case 400 :
       throw BadRequestException(body: res.body.toString());


     case 401:
     case 403:
       throw UnAuthorisedException(body: res.body.toString());


     case 500 :
     default :
       throw FetchDataException(body: "Error While Communicating To The Server");
   }

  }

}

class CategoryData {

  static Future<List<CategoryModel>> fetchCategory() async{
    final response = await http.get(Uri.parse("${Urls.categoryUrl}consumer_key=${Urls.consumerKey}&consumer_secret=${Urls.consumerSecret}&parent=0"));
    final json = response.body;
    if(response.statusCode == 200){
      List<dynamic> body = jsonDecode(json);


     List<CategoryModel> categories = body.map((dynamic category) {
        return CategoryModel.fromJson(category);
      }).toList();
      return categories;
    } else {
    throw Exception("Failed To Load Categories");
    }

  }

  // static Future<List<ProductListDataModel>> fetchProduct() async{
  //   List body = await getRequest("${Urls.productUrl}consumer_key=${Urls.consumerKey}&consumer_secret=${Urls.consumerSecret}");
  //
  //
  //     // List<ProductListDataModel> productList = [];
  //
  //
  //     List<ProductListDataModel> products = body.map((dynamic products) {
  //       return ProductListDataModel.fromJson(products);
  //     }).toList();
  //     print("Product Length:- ${products.length}");
  //     return products;
  //   }
  static Future<List<ProductListDataModel>> fetchProduct() async {
    List<ProductListDataModel> productsOfCategory = [];
    String url = '${Urls.productUrl}&consumer_key=${Urls.consumerKey}&consumer_secret=${Urls.consumerSecret}&per_page=8';
    print(url);
    var response = await http.get(Uri.parse(url));

    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map<String,dynamic> i in data) {
        productsOfCategory.add(ProductListDataModel.fromJson(i));
      }
      return productsOfCategory;
    } else {
      return productsOfCategory;
    }
  }


  static Future<SingleProductModel> getSingleProduct(int productId) async {
    String url = '${Urls.singleProductUrl}$productId?consumer_key=${Urls.consumerKey}&consumer_secret=${Urls.consumerSecret}';
    print("Single Product:- ${url}");
    var response = await http.get(Uri.parse(url));

    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return SingleProductModel.fromJson(data);
    } else {
      return SingleProductModel.fromJson(data);
    }
  }

  // static Future<List<ProductListDataModel>> fetchProduct() async {
  //   var response = await http.get(
  //     Uri.parse(Urls.productUrl),
  //   );
  //   List<ProductListDataModel> arrProducts = [];
  //   if (response.statusCode == 200) {
  //     //print("Insta Follower Model -: ${response.body}");
  //     var json = jsonDecode(response.body);
  //
  //     for (Map<String, dynamic> products in json) {
  //       arrProducts.add(ProductListDataModel.fromJson(products));
  //     }
  //   }
  //
  //  print("Products: ${arrProducts}");
  //   return arrProducts;
  // }





  static Future<List<dynamic>> getRequest(String url) async{
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      List<dynamic> body = jsonDecode(response.body);
      return body;
    }  else {
      throw Exception("Failed To Load Products");
    }
  }

}









