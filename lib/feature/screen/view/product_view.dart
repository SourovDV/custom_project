import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/screen/controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});
  
  @override
  Widget build(BuildContext context) {
  List<String> sliderData = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
  ];

  List<Map<String,String>> showData = [
    {
      "icon": "assets/download (1).jpeg",
    },
    {
      "icon": "assets/download (1).png",
    },
    {
      "icon": "assets/images (1).png",
    },
    {
      "icon": "assets/download (1).png",
    },
    {
      "icon": "assets/download (1).jpeg",
    },
    {
      "icon": "assets/images (1).png",
    },
  ];
  List<Map<String,String>> detailsData = [
    {
      "Name":"Watch",
      "price":"500",
      "Image":"assets/watch.png"
    },
    {
      "Name":"Shoes",
      "price":"500",
      "Image":"assets/shoes.jpeg"
    },
    {
      "Name":"Sunglasses",
      "price":"500",
      "Image":"assets/sunglasses.jpg"
    },
    {
      "Name":"Watch",
      "price":"500",
      "Image":"assets/watch.png"
    },
    {
      "Name":"Sunglasses",
      "price":"500",
      "Image":"assets/sunglasses.jpg"
    },
    {
      "Name":"Shoes",
      "price":"500",
      "Image":"assets/shoes.jpeg"
    }
  ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: Icon(Icons.menu), actions: [Icon(Icons.search)]),
        body: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(image: NetworkImage(sliderData[itemIndex]),
                    fit: BoxFit.cover),
                  ),
                );
              },
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Top Cotegories"),
              Text("see All ")
            ],),
            SizedBox(height: 10,),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                  primary: false,
                  itemCount: showData.length,
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                      image: DecorationImage(image:AssetImage(showData[index]['icon']!),fit: BoxFit.cover)
                    ),
                  );
              }),
            ),
            SizedBox(height: 20,),
            Expanded(
               child: GridView.builder(
                 itemCount: showData.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.8),
                   itemBuilder: (context,index){
                      return InkWell(
                        onTap:()=>controller.goToAnotherPage(detailsData[index]),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: BoxBorder.all(color: Colors.black)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Stack(
                                 children: [
                                   Container(
                                     height: 120,
                                     width: double.infinity,
                                     child:  Center(child: Image.asset(detailsData[index]["Image"] ?? "assets/images.png",fit: BoxFit.cover,)),
                                   ),
                                   Align(child: Icon(Icons.favorite_border),alignment: Alignment.topRight)
                                 ],
                               ),
                                Text(detailsData[index]["Name"] ?? "Watch"),
                                Text(detailsData[index]["price"] ?? "100")
                              ],
                            ),
                          ),
                        ),
                      );
                   })
            )
          ],
        )
      ),
    );
  }
}
