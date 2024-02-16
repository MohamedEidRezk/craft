import 'package:flutter/material.dart';

class CustomCandleCard extends StatelessWidget {
   CustomCandleCard({super.key , required this.imgPath,  required this.text1 ,required this.text2 ,required this.priceBefore , required this.priceAfter});
  String imgPath="";
  String text1="";
  String text2="";
  String priceBefore="";
   String priceAfter="";


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 312,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
      ),
      child:   Column(
        children: [
          Stack(
              alignment: Alignment.topRight,
              children: [
            Image(image: AssetImage(imgPath) , width: 156,height: 228,),
            const Positioned(
                top: 18.5,
                right: 18.5,
                child: Icon(Icons.favorite_outline , size: 24,color: Color(0xffFFFFFF),)),
          ]),
          const SizedBox(height: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1 ,style: const TextStyle(
                color: Color(0xff101623),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),
              Text(text2 ,style: const TextStyle(
                color: Color(0xff101623),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),
              const SizedBox(height: 3,),
              Row(
                children: [
                  Text(priceBefore ,style: const TextStyle(
                      color: Color(0xff717784),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough
                  ) ,),
              const SizedBox(width: 3,),
                  Text(priceAfter ,style: const TextStyle(
                    color: Color(0xff101623),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ) ,),
                ],
              )
            ],
          )
        ],
      ),
    );

  }
}
