
import 'package:ecommerce_app/models/data_model.dart';

abstract class ProductListState {}


class ProductListInitialState extends ProductListState {}


class ProductListLoadingState extends ProductListState{}

class ProductListLoadedState extends ProductListState{

  ProductListDataModel productListDataModel;
  ProductListLoadedState({required this.productListDataModel});
}

class  ProductListInternetErrorState extends ProductListState{
  String errorMsg;
  ProductListInternetErrorState({required this.errorMsg});
}

class ProductListErrorState extends ProductListState{
  String errorMsg;
  ProductListErrorState({required this.errorMsg});
}