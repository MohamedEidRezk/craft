import 'package:flutter/material.dart';

class CustomTrndingScroll extends StatelessWidget {
   CustomTrndingScroll({super.key , required this.imgPath , required this.name} );
   String imgPath='';
  String name='';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 190,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
      ),
      child:  Column(
        children: [
          Image(image: AssetImage(imgPath) , width: 157,height: 152,),
          const SizedBox(height: 12,),
          Text(name ,style: const TextStyle(
            color: Color(0xff101623),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),)
        ],
      ),
    );

  }
}
