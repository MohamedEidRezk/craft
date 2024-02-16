import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({super.key , required this.imgPath , required this.text});
  String imgPath='';
  String text='';
  @override
  Widget build(BuildContext context) {
    return                   Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(imgPath, width: 80 , height: 80,),
          const SizedBox(height: 1,),
           Text(text , style: const TextStyle(fontSize: 10 , fontWeight: FontWeight.w500 , color: Color(0xff101623), ),),

        ],
      ),
    );

  }
}
