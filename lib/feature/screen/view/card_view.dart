import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/common/common_button.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My Card")),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
          return Container(
            margin:  EdgeInsets.only(bottom: 12),
            height: 100,
            width: double.infinity,
            decoration:BoxDecoration(
            color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 100,width: 100,color: Colors.white,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Apple phone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("\$200",style: TextStyle(fontSize: 18),)
                    ],
                  ),
                )
              ],
            ),
          );
        }),
        bottomNavigationBar: Container(
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total"),
                  Text("\$ 600")
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  color: AppColor.primaryColor,
                  child: CommonButton(text: "Add Card",)),
              SizedBox(height: 10,)
            ],
          )
        ),

      ),
    );
  }
}
