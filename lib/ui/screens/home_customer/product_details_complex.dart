import 'package:craft/ui/widgets/add_to_cart_button.dart';
import 'package:craft/ui/widgets/input_quity.dart';
import 'package:craft/ui/widgets/product_details_detailsalary_section.dart';
import 'package:craft/ui/widgets/select_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsComplex extends StatelessWidget {
  const ProductDetailsComplex({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(

          children: [
            const Image(image: AssetImage("assets/images/Product.png"), width: 375 , height: 413,),
             Positioned(
              top: 25,
              child:Row(
                children: [
                  const SizedBox(width: 24,),
                  IconButton(onPressed: (){
                    context.pushReplacement("/candleCategory");
                  }, icon: const Icon(Icons.arrow_back_ios , color: Color(0xff101623))),
                  const SizedBox(width: 80,),
                  const Text('Product Details' ,style: TextStyle(
                      fontSize: 18,
                      color:Color(0xff101623),fontWeight: FontWeight.w600),),
                  const SizedBox(width: 50,),
                  const Icon(Icons.favorite_border , color: Color(0xff101623), size: 24,),
                  const SizedBox(width: 15,),
                  const Icon(Icons.shopping_bag_outlined , color: Color(0xff101623), size: 24,),

                ],
              ), ),
            Positioned(
                top: 328,
                child: Container(
                  width: 375,
                  height: 434,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:   Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [

                        SalaryDetailSection(
                            text1: "Handmade crochet",
                            text2: "cardigan for winter",
                            weightDetail: "Female Style",
                            salaryBefore: "EGP 300",
                            salaryAfter: "EGP 250"),
                     const SizedBox(height: 8,),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Select Size' ,style: TextStyle(
                                    fontSize: 18,
                                    color:Color(0xff101623),fontWeight: FontWeight.w500),),
                                SizedBox(height: 3,),
                                SelectSizeContainer(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Select Color' ,style: TextStyle(
                                    fontSize: 18,
                                    color:Color(0xff101623),fontWeight: FontWeight.w500),),
                                const SizedBox(height: 3,),
                                Image.asset("assets/images/Component Colors.png" , width: 196 , height: 26,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 4,),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InputQuantity(),
                            SizedBox(width: 4,),
                            AddToCartButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}