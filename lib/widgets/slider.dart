import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class myBannerSlider extends StatefulWidget {
  @override
  State<myBannerSlider> createState() => _myBannerSliderState();
}

class _myBannerSliderState extends State<myBannerSlider> {
  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  List<Map<String, dynamic>> bannerImagesList = [
    {
      "id" : 1,
      "image" : "assets/images/banner2.webp"
    },
    {
      "id" : 2,
      "image" : "assets/images/banner3.webp"
    },
    {
      "id" : 3,
      "image" : "assets/images/banner1.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InkWell(
            onTap: (){
              print(currentIndex);
            },
            child: CarouselSlider(
              items: bannerImagesList.map((eachImage) => Image.asset(
                eachImage['image'],
                fit: BoxFit.cover,
                width: double.infinity,
              )).toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 19/10,
                viewportFraction: 1,
                onPageChanged: (index, reason){
                  currentIndex = index;
                  setState(() {

                  });

                }
              ),

            ),
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: bannerImagesList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width:  currentIndex == entry.key ? 17 : 7,
                        height: 7,
                        margin: EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key ? Colors.orange : Colors.blue,
                        ),
                      ),

                    );
                  }).toList()

              )

          )
        ],
      )
    );
  }



}


