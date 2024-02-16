import 'package:flutter/material.dart';

class SelectSizeContainer extends StatelessWidget {
  const SelectSizeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(width: 45,
          height: 44,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            shape: BoxShape.rectangle,
          ),
          child: const Center(child: Text("S"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 24 , color: Color(0xff717784)), )),
        ),
        const SizedBox(width: 6,),
        Container(width: 45,
          height: 44,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            shape: BoxShape.rectangle,
          ),
          child: const Center(child: Text("M"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 24 , color: Color(0xff717784)), )),
        ),
        const SizedBox(width: 6,),
        Container(width: 45,
          height: 44,
          decoration:  BoxDecoration(
            color: const Color(0xff7FB04F),
          borderRadius: BorderRadius.circular(12),
            shape: BoxShape.rectangle,
          ),
          child: const Center(child: Text("L"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 24 , color: Color(0xff717784)), )),
        ),
        const SizedBox(width: 6,),
        Container(width: 45,
          height: 44,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            shape: BoxShape.rectangle,
          ),
          child: const Center(child: Text("XL"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 24 , color: Color(0xff717784)), )),
        ),
        const SizedBox(width: 6,),
        Container(width: 45,
          height: 44,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            shape: BoxShape.rectangle,
          ),
          child: const Center(child: Text("XXL"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 24 , color: Color(0xff717784)), )),
        ),


      ],
    );
  }
}
