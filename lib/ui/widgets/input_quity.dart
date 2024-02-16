import 'package:flutter/material.dart';

class InputQuantity extends StatelessWidget {
  const InputQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 52,
          height: 46,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
              border: Border(
                right: BorderSide(color: Color(0xffE5E7EB)),
                left: BorderSide(color: Color(0xffE5E7EB)),
                top: BorderSide(color: Color(0xffE5E7EB)),
                bottom: BorderSide(color: Color(0xffE5E7EB)),
              ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30))
          ),
          child: const Center(child: Text("-"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20 , color: Color(0xff101623)), )),
        ),
        Container(width: 52,
          height: 46,
          decoration: const BoxDecoration(border: Border(
            right: BorderSide(color: Color(0xffE5E7EB)),
            left: BorderSide(color: Color(0xffE5E7EB)),
            top: BorderSide(color: Color(0xffE5E7EB)),
            bottom: BorderSide(color: Color(0xffE5E7EB)),
          ),
              shape: BoxShape.rectangle,
          ),
          child: const Center(child: Text("1"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20 , color: Color(0xff101623)), )),
        ),
        Container(
          width: 52,
          height: 46,
          decoration: const BoxDecoration(border: Border(
            right: BorderSide(color: Color(0xffE5E7EB)),
            left: BorderSide(color: Color(0xffE5E7EB)),
            top: BorderSide(color: Color(0xffE5E7EB)),
            bottom: BorderSide(color: Color(0xffE5E7EB)),
          ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))
          ),
          child: const Center(child: Text("+"  ,style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 20 , color: Color(0xff101623)), )),
        ),

      ],
    );
  }
}
