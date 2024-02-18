import 'package:craft/ui/widgets/add_to_cart_button.dart';
import 'package:craft/ui/widgets/input_quity.dart';
import 'package:craft/ui/widgets/product_details_detailsalary_section.dart';
import 'package:flutter/material.dart';

class ProductDetailsSimple extends StatelessWidget {
  const ProductDetailsSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(

          children: [
            const Image(image: AssetImage("assets/images/Rectangle001.png"), width: 375 , height: 577,),
            const Positioned(
              top: 25,
              child:Row(
              children: [
                SizedBox(width: 24,),
                Icon(Icons.arrow_back_ios_new , color: Color(0xffFFFFFF),size: 16,),
                SizedBox(width: 102.5,),
                Text('Product Details' ,style: TextStyle(
                    fontSize: 18,
                    color:Color(0xffFFFFFF),fontWeight: FontWeight.w600),),
                SizedBox(width: 62,),
                Icon(Icons.favorite_border , color: Color(0xffFFFFFF), size: 24,),
                SizedBox(width: 15,),
                Icon(Icons.shopping_bag_outlined , color: Color(0xffFFFFFF), size: 24,),

              ],
            ), ),
            Positioned(
                top: 424,
                child: Container(
                  width: 375,
                  height: 304,
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
                            text1: "Wild Vanilla Scented ",
                            text2: "Candel",
                            weightDetail: "200g / 10 oz.",
                            salaryBefore: "EGP 300",
                            salaryAfter: "EGP 250"),
                        const SizedBox(height: 30,),
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