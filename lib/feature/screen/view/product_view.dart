import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_project/feature/screen/controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {


    List<Map<String, String>> showData = [
      {"icon": "assets/download (1).jpeg"},
      {"icon": "assets/download (1).png"},
      {"icon": "assets/images (1).png"},
      {"icon": "assets/download (1).png"},
      {"icon": "assets/download (1).jpeg"},
      {"icon": "assets/images (1).png"},
    ];
    List<Map> detailsData = [
      {
        "id": "1",
        "col_id": "1",
        "Name": "Laptop",
        "price": "5000",
        "Image": "https://img.freepik.com/free-photo/laptop-with-sun-background_1232-429.jpg",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["20","10"],
      },
      {
        "id": "2",
        "col_id": "1",
        "Name": "Laptop",
        "price": "50000",
        "Image": "https://cdn.mos.cms.futurecdn.net/FUi2wwNdyFSwShZZ7LaqWf.jpg",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["20","50","58"],
      },
      {
        "id": "3",
        "col_id": "2",
        "Name": "Watch pro max",
        "price": "500",
        "Image": "https://m.media-amazon.com/images/I/81+d6eSA0eL._AC_UY1000_.jpg",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["5","10","20","10"],
      },
      {
        "id": "4",
        "col_id": "2",
        "Name": "Watch pro",
        "price": "8200",
        "Image": "https://img.freepik.com/free-photo/stylish-golden-watch-white-surface_181624-27078.jpg?semt=ais_rp_50_assets&w=740&q=80",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["20","10"],
      },
      {
        "id": "5",
        "col_id": "3",
        "Name": "Shoes low prices",
        "price": "500",
        "Image": "https://png.pngtree.com/png-vector/20241018/ourmid/pngtree-running-shoes-or-sneakers-on-a-transparent-background-png-image_14112954.png",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["20","10"],
      },
      {
        "id": "6",
        "col_id": "3",
        "Name": "Shoes high price",
        "price": "500",
        "Image": "https://storage.apex4u.com/94547A28-1.jpg",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["20","10"],
      },
      {
        "id": "",
        "col_id": "1",
        "Name": "Watch",
        "price": "500",
        "Image": "assets/watch.png",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["20","10"],
      },
      {
        "id": "1",
        "col_id": "1",
        "Name": "Watch",
        "price": "500",
        "Image": "assets/watch.png",
        "description": "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem",
        "variant":["20","10"],
      },

    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: controller.logOutUser,
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: Column(
          children: [
            controller.slider.isEmpty
                ? Center(child: CircularProgressIndicator())
                : CarouselSlider.builder(
                    itemCount: controller.slider.length,
                    itemBuilder:
                        (
                          BuildContext context,
                          int itemIndex,
                          int pageViewIndex,
                        ) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: NetworkImage(
                                  controller.slider[itemIndex]["image"],
                                ),
                                fit: BoxFit.cover,
                              ),
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Top Cotegories"), Text("see All ")],
            ),
            SizedBox(height: 10),
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("collection")
                  .snapshots(),
              builder: (_, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                          child: Image.network(
                            snapshot.data!.docs[index]["icon"],
                          ),
                        );
                      },
                    ),
                  );
                }
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: StreamBuilder(stream: FirebaseFirestore.instance.collection("product").snapshots(),
                  builder: (context,snapshot){
                    final getData = snapshot.data!.docs;
                    return GridView.builder(
                      itemCount: snapshot.data!.docs.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: ()=>controller.goToAnotherPage(getData[index]),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: BoxBorder.all(color: Colors.black),
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
                                        child: Center(
                                          child: Image.network(
                                              getData[index]["Image"] ??
                                                "assets/images.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        child: Icon(Icons.favorite_border),
                                        alignment: Alignment.topRight,
                                      ),
                                    ],
                                  ),
                                  Text(getData[index]["Name"] ?? "Watch"),
                                  Text(getData[index]["price"] ?? "100"),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
