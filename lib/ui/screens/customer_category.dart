import 'package:craft/ui/widgets/custom_category_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerCategory extends StatelessWidget {
  const CustomerCategory({super.key});

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
                  SizedBox(width: 24,),
                  Icon(Icons.arrow_back_ios_new , color: Color(0xff000000),size: 16,),
                  SizedBox(width: 102.5,),
                  Text('Category' ,style: TextStyle(
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
                CustomCategoryCard(cardName: "HandMade Carpets", imgPath: "assets/images/Rectangle1.png"),
                const SizedBox(height: 3,),
                InkWell(
                    onTap: ()=>context.pushReplacement("/customerMaterial"),
                    child: CustomCategoryCard(cardName: "Crocheting", imgPath: "assets/images/Rectangle2.png"))
              ],
            ),
              SizedBox(width:8 ,),

             Column(

              children: [
                SizedBox(height: 40,),
                const SizedBox(
                  child: Column(children: [
                    Text("Hands can cook, hands can",
                      style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: Color(0xff7FB04F)),
                    ),
                    Text(" create. There is no better",
                      style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: Color(0xff7FB04F)),
                    ),
                    Text("tool than our hands!",
                      style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: Color(0xff7FB04F)),
                    ),
                  ],),
                ),
                const SizedBox(height: 10,),

                InkWell(
                    onTap: (){
                      context.pushReplacement("/candleCategory");
                    },
                    child: CustomCategoryCard(cardName: "Candle  Making", imgPath: "assets/images/Rectangle3.png")),
                const SizedBox(height: 4,),
                CustomCategoryCard(cardName: "Soap Making", imgPath: "assets/images/Rectangle4.png"),


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
