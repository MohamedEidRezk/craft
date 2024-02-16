import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 170,
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color(0xff7FB04F),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag , color: Color(0xffFFFFFF), size: 24,),
          SizedBox(width: 8,),
          Text("Add to Cart" , style: TextStyle(
            fontSize: 14 , fontWeight: FontWeight.w600 ,
            color: Color(0xffFFFFFF),
          ),)
        ],
      ),
    );
  }
}
