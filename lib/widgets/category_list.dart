import 'package:ecommerce_app/api/api_helper.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  List<Map<String, dynamic>> myCategoryList = [

    {
      'image' : "assets/category/pendant.jpg",
      'name'  : "Pendants",
    },
    {
      'image' : "assets/category/rings.webp",
      'name'  : "Rings",
    },
    {
      'image' : "assets/category/earrings.jpg",
      'name'  : "Earrings",
    },
    {
      'image' : "assets/category/bracelets.jpg",
      'name'  : "Bracelets",
    },
    {
      'image' : "assets/category/necklace.jpg",
      'name'  : "Necklace",
    },
    {
      'image' : "assets/category/men's.jpg",
      'name'  : "Men's",
    },



  ];

  @override
  void initState() {
    super.initState();
    final httpsUri = Uri(
        scheme: 'https',
        host: 'gaurvi.co',
        path: 'wp-content/uploads/2023/02/',
        );
    print(httpsUri); // https
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: FutureBuilder(
      future: CategoryData.fetchCategory(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        } else if(snapshot.error != null){
          print(snapshot.error.toString());
        }
        if(snapshot.hasData){
          var categories = snapshot.data!;
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index){
                print(categories[index].name.toString());
                print(categories[index].image.toString());
                return Expanded(
                  child: Column(
                    children: [
                     Container(
                          padding: const EdgeInsets.only(right: 15, left: 5),
                          decoration: BoxDecoration(
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                            child: Image.network(categories[index].image!.src!.toString(),width: 60,)

                          ),
                              ),
                      Flexible(child: Text(categories[index].name.toString())),
                    ],
                  ),
                );
              });
        }
        return Container();
      },

    ) ,
    );
  }
}
