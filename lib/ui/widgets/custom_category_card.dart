import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
   CustomCategoryCard({super.key , required this.cardName , required this.imgPath});
  String cardName="";
  String imgPath="";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 262,
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child:   Column(
        children: [
          Image(image: AssetImage(imgPath) , width: 156,height: 212,),
          SizedBox(height: 12,),
          Text(cardName ,style: TextStyle(
            color: Color(0xff101623),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),)
        ],
      ),
    );

  }
}
