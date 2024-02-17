import 'package:flutter/material.dart';
class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsetsDirectional.only(bottom: 10,top: 10,start: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
            ,border: Border.all(width: 1,color: const Color(0xFFE5E7EB))),
        width: 334,
        height: 132,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17),
              ),
              child: Image.asset(
                "assets/images/Rectangle 1004.png",
                height: 110,
                width: 110,
              ),
            ),
            const SizedBox(width: 12,),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  const Text("Beginner’s Guide to Crochet Workshop",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF101623))),
                  const SizedBox(height: 8,),
                  Row(children: [
                    Image.asset("assets/images/Ellipse 17.png",width: 16,height: 16),
                    const SizedBox(width: 4,),
                    const Text("Salma Mostafa",
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF101623))),
                  ]),
                  const SizedBox(height: 18),

                  Row(
                    children: [
                      SizedBox(
                        width: 159,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const LinearProgressIndicator(
                            value: 0.1,
                            backgroundColor: Color(0xFFEEEEEE),
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF7FB04F)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 7),
                      const Text("1/9",style: TextStyle(color: Color(0xFFA1A8B0),fontSize: 9,fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
