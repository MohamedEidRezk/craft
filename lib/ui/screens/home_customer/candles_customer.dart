import 'package:craft/ui/widgets/custom_candle_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CandlesCustomer extends StatelessWidget {
  const CandlesCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Candles",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          leading:IconButton(
              onPressed: () {
                context.pushReplacement("/customerCategory");
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(

                    children: [
                      const SizedBox(height: 10,),
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
