import 'package:craft/ui/widgets/custom_candle_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CandlesCustomer extends StatelessWidget {
  const CandlesCustomer({super.key});

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
                  Text('Candles' ,style: TextStyle(
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
                      const SizedBox(height: 40,),
                      const SizedBox(
                        child: Column(children: [
                          Text("All products are ",
                            style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: Color(0xff7FB04F)),
                          ),
                          Text("100% natural.",
                            style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: Color(0xff7FB04F)),
                          ),
                        ],),
                      ),
                      const SizedBox(height: 10,),
                      CustomCandleCard(imgPath: "assets/images/Rectangle103.png", text1: "Wild Vanilla Scented ", text2: "Candle", priceBefore: "", priceAfter: "EGP 250"),
                      const SizedBox(height: 10,),
                      CustomCandleCard(imgPath: "assets/images/Rectangle104.png", text1: "Wild Vanilla Scented ", text2: "Candle", priceBefore: "", priceAfter: "EGP 250"),



                    ],
                  ),
                  const SizedBox(width:15 ,),
                  Column(
                    children: [
                      InkWell(
                          onTap: ()=>context.pushReplacement('/productDetailsComplex'),
                          child: CustomCandleCard(imgPath: "assets/images/Rectangle100.png", text1: "Wild Vanilla Scented ", text2: "Candle", priceBefore: "", priceAfter: "EGP 250")),
                      const SizedBox(height: 10,),
                      InkWell(
                          onTap: ()=>context.pushReplacement('/productDetailsSimple'),
                          child: CustomCandleCard(imgPath: "assets/images/Rectangle101.png", text1: "Wild Vanilla Scented ", text2: "Candle", priceBefore: "EGP 250", priceAfter: "EGP 250")),

                    ],
                  ),

                ],)


            ],
          ),
        ),
      )  ,
    );
  }
}
