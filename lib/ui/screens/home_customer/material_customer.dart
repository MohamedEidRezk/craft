import 'package:craft/ui/widgets/custom_category_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerMaterial extends StatelessWidget {
  const CustomerMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:   AppBar(
        backgroundColor: Colors.white,
          title: const Text(
            "Material",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          elevation: 0,

          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                )),
          ]),

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      CustomCategoryCard(cardName: "Sewing Machines", imgPath: "assets/images/Rectangle00.png"),
                      const SizedBox(height: 3,),
                      CustomCategoryCard(cardName: "Accessories supplies", imgPath: "assets/images/Rectangle01.png")
                    ],
                  ),
                  SizedBox(width:8 ,),

                  Column(

                    children: [
                      SizedBox(height: 40,),

                      const SizedBox(height: 10,),

                      CustomCategoryCard(cardName: "Crochet supplies", imgPath: "assets/images/Rectangle02.png"),
                      const SizedBox(height: 4,),
                      CustomCategoryCard(cardName: "Machines threads", imgPath: "assets/images/Rectangle03.png"),


                    ],
                  ),
                ],)


            ],
          ),
        ),
      ) ,
    );
  }
}
