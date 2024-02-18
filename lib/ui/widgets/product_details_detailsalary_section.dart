import 'package:flutter/material.dart';

class SalaryDetailSection extends StatelessWidget {
   SalaryDetailSection({super.key ,
   required this.text1, required this.text2,required this.weightDetail ,required this.salaryBefore ,required this.salaryAfter,




   });
  String text1='';
  String text2 = '';
  String weightDetail='';
  String salaryBefore='';
  String salaryAfter='';
  @override
  Widget build(BuildContext context) {

    return                         Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1,
              style: const TextStyle(fontWeight: FontWeight.w600 , fontSize: 18 , color: Color(0xff101623)),
            ),
            const SizedBox(height: 1,),
            Text(text2,
              style: const TextStyle(fontWeight: FontWeight.w600 , fontSize: 18 , color: Color(0xff101623)),
            ),
            const SizedBox(height: 5,),
            Text(weightDetail,
              style: const TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: Color(0xffA1A8B0)),
            ),

          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text(salaryBefore,
              style: const TextStyle(decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.w400 , fontSize: 12 , color: Color(0xff717784)),
            ),
              Text(salaryAfter,
                style: const TextStyle(fontWeight: FontWeight.w600 , fontSize: 16 , color: Color(0xff7FB04F)),
              ),
            ],
          ),
        ),
      ],
    );

  }
}
