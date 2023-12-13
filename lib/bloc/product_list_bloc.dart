
import 'package:ecommerce_app/api/api_helper.dart';
import 'package:ecommerce_app/api/my_exception.dart';
import 'package:ecommerce_app/api/urls.dart';
import 'package:ecommerce_app/bloc/product_list_event.dart';
import 'package:ecommerce_app/bloc/product_list_state.dart';
import 'package:ecommerce_app/models/data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState>{
  ApiHelper apiHelper;

  ProductListBloc({required this.apiHelper}) : super(ProductListInitialState()){


    on<GetProductListEvent>((event, emit) async{
      emit(ProductListLoadingState());

      try{
        var res = await apiHelper.getApi(url: "${Urls.productUrl}");
        //emit(ProductListLoadedState(productListDataModel: res));

      } catch(error){
        if(error is FetchDataException){
          emit(ProductListInternetErrorState(errorMsg: error.toString()));
        } else {
          emit(ProductListErrorState(errorMsg: error.toString()));
        }
      }
    });

  }

}