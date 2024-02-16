import 'package:flutter/material.dart';

class CustomChildScroll extends StatelessWidget {
   CustomChildScroll({super.key , required this.name ,required this.containerText, required this.avatarImgPath ,
    required this.mainImgPath
  } );
  String mainImgPath="";
  String containerText="";
  String avatarImgPath="";
  String name="";

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                width:157 ,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                )),
            Positioned(
                top: 1,
                child: Image.asset(mainImgPath , width: 157,height: 152,)),
            Positioned(
              bottom: 3,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 90,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffFAF8ED),
                            ),
                            child:  Text(containerText , style: const TextStyle(
                                color: Color(0xff101623),
                                fontSize: 8  , fontWeight: FontWeight.w400),),
                          ),
                          const SizedBox(width: 7),
                           CircleAvatar(radius: 20,
                            backgroundImage: AssetImage(avatarImgPath),
                          ),
                        ],
                      ),
                       Row(
                        children: [
                          Text(name,style: const TextStyle(
                              color: Color(0xff101623),
                              fontSize: 7  , fontWeight: FontWeight.w400),),
                        ],
                      ),

                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
