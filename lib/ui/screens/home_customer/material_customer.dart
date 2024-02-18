import 'package:craft/ui/widgets/custom_category_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerMaterial extends StatelessWidget {
  const CustomerMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 5,),
              const Row(
                children: [
                  SizedBox(width: 100,),
                  Text('Material' ,style: TextStyle(
                      fontSize: 18,
                      color:Color(0xff101623),fontWeight: FontWeight.w600),),
                  SizedBox(width: 62,),
                  Icon(Icons.favorite_border , color: Color(0xff000000), size: 24,),
                  SizedBox(width: 15,),
                  Icon(Icons.shopping_bag_outlined , color: Color(0xff000000), size: 24,),

                ],
              ),
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
