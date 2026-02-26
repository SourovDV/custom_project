import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
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
      "icon": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    },
    {
      "icon": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    },
    {
      "icon": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    },
    {
      "icon": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    },
    {
      "icon": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    },
    {
      "icon": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWTEFxQjptr_kzGnuP1eI6Ns1Dqyk2621t3w&s",
    },
  ];
    return Scaffold(
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
                    image: DecorationImage(image:NetworkImage(showData[index]['icon']!))
                  ),
                );
            }),
          ),
          Expanded(
             child: GridView.builder(
               itemCount: showData.length,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                 itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        image: DecorationImage(image: NetworkImage(showData[index]["icon"]!))
                      ),
                    );
                 })
          )
        ],
      ),
    );
  }
}
