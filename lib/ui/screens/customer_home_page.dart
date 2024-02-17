import 'package:craft/ui/widgets/bottom_navigation_bar.dart';
import 'package:craft/ui/widgets/button.dart';
import 'package:craft/ui/widgets/custom_child_scroll_for-you.dart';
import 'package:craft/ui/widgets/custom_container_category_home1.dart';
import 'package:craft/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_child_scroll_trending.dart';
class CustomerHomePage extends StatefulWidget {

  const CustomerHomePage({super.key});

  @override
  State<CustomerHomePage> createState() => _CustomerHomePageState();
}

class _CustomerHomePageState extends State<CustomerHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 25 , left: 20 , bottom: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Good Morning "  , style: TextStyle(fontSize:14 , color: Color(0xff3B4453 ),fontWeight: FontWeight.w500 ),),
                            Text("👋",style: TextStyle(fontSize:14 ,color: Colors.amber,fontWeight: FontWeight.w500 ),)
                          ],
                        ),
                        Text("Nada"  , style: TextStyle(fontSize:24 , color: Color(0xff3B4453 ) , fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.notifications , color: Color(0xff000000), size: 24,),
                        SizedBox(width: 15,),
                        Icon(Icons.favorite_border , color: Color(0xff000000), size: 24,),
                        SizedBox(width: 15,),
                        Icon(Icons.shopping_bag_outlined , color: Color(0xff000000), size: 24,),
                        SizedBox(width: 18,),

                      ],
                    )
                  ],
                ),
              ),
               const Padding(
                padding: EdgeInsets.only(left: 20 , right: 24 , bottom: 26),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextFormField(
                    prefixIcon: Icon(Icons.search , size: 16,color: Color(0xffA1A8B0), ),
                    hintText: 'Search for crafts, products, courses...',
                    hintStyle: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400 , color: Color(0xffA1A8B0)),
                    suffixIcon: Icon(Icons.filter_list , size: 16,color: Color(0xffA1A8B0),),
                    fillColor: Color(0xffE5E7EB),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , right: 20 , bottom: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 335,
                    height: 100,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomContainer(imgPath: "assets/images/Rectangle999.jpg", text: "Crafters"),
                          const SizedBox(width: 20,),
                          CustomContainer(imgPath: "assets/images/Rectangle1000.jpg", text: "Crafts"),
                          const SizedBox(width: 20,),
                          InkWell(
                              onTap: ()=>context.pushReplacement("/customerCategory"),
                              child: CustomContainer(
                                  imgPath: "assets/images/Rectangle1001.jpg", text: "Products")),
                          const SizedBox(width: 20,),
                          InkWell(
                              onTap: () {
                                context.pushReplacement('/coursesAndWorkshop');
                              },
                              child: CustomContainer(imgPath: "assets/images/Rectangle 1002.jpg", text: "Courses"))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , right: 7, bottom: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(

                    children: [
                      Container(
                        width: 335,
                        height: 74,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(10) ),
                            gradient: LinearGradient(
                              colors: [Color(0xffE5D1B8), Color(0xffFFFFFF)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),),
                        child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start ,
                                        children: [
                                          Text("Beginner’s Guide to Candle" ,
                                            style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: Color(0xff101623)) ,),
                                          Text("Making Workshop" ,
                                            style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: Color(0xff101623)) ,),

                                        ],
                                      ),
                              ),
                              Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Image.asset("assets/images/Rectangle 1003.png" , width: 100, height: 74,),
                                      Container(
                                        width: 46,
                                        height: 15,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          borderRadius:BorderRadius.all(Radius.circular(10)),
                                          gradient: LinearGradient(
                                            colors: [Color(0xffE5D1B8), Color(0xffFFFFFF)],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ),),
                                      child: const Text("Online", style: TextStyle(
                                          color: Color(0xff101623),
                                          fontSize: 8 , fontWeight: FontWeight.w400),),

                                      )

                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                      ),
                      const SizedBox(
                        width: 335,
                        height: 31,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8 , left: 16 , bottom: 7),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month_outlined , color: Color(0xff7FB04F),size: 16,),
                                      SizedBox(width: 2,),
                                      Text("4th November 2023",style: TextStyle(
                                          color: Color(0xff101623),
                                          fontSize: 8 , fontWeight:FontWeight.w400), )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0 , right: 16 , bottom: 7),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.access_time_rounded , color: Color(0xff7FB04F),size: 16,),
                                      SizedBox(width: 2,),
                                      Text("02:00 PM",style: TextStyle(
                                          color: Color(0xff101623),
                                          fontSize: 8 , fontWeight:FontWeight.w400), )
                                    ],

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 6),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "For you",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xff101623)),
                      ),
                      Text(
                        "New from your favorite crafters",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: Color(0xffA1A8B0)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20 , bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        CustomChildScroll(name: "Ahmed Khaled",
                            containerText: "Pottery Collection",
                            avatarImgPath: "assets/images/ellipse-17-bg-979.png",
                            mainImgPath: "assets/images/Rectangle1004.png"),
                       const SizedBox(width: 20,),
                       CustomChildScroll(name: "Ahmed Samy",
                           containerText: "Pottery Collection",
                           avatarImgPath: "assets/images/ellipse-17-bg-979.png",
                           mainImgPath: "assets/images/Rectangle1005.png"),
                        const SizedBox(width: 20,),
                        CustomChildScroll(name: "Ahmed Khaled",
                            containerText: "Pottery Collection",
                            avatarImgPath: "assets/images/ellipse-17-bg-979.png",
                            mainImgPath: "assets/images/Rectangle1004.png"),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 6),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trending  Crafters",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xff101623)),
                      ),
                    ],
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 20 , top: 6 , bottom: 26,right: 20),
                 child: Align(
                   alignment: Alignment.topLeft,
                   child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomTrndingScroll(imgPath: 'assets/images/Rectangle1006.png', name: 'Tarek Ahmed',),
                        const SizedBox(width: 20,),
                        CustomTrndingScroll(imgPath: 'assets/images/Rectangle1007.png', name: 'Reda Mahmoud',),
                        const SizedBox(width: 20,),
                        CustomTrndingScroll(imgPath: 'assets/images/Rectangle1006.png', name: 'Tarek Ahmed',),
                      ],
                    ),
              ),
                 ),
               ),
               const Padding(
                padding: EdgeInsets.only(left: 20,bottom: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xff101623)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20, right: 21),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 334,
                    height: 229,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image(image: AssetImage("assets/images/Rectangle 998.png")),
                        Positioned(
                          top: 116,
                          bottom: 4,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Best Trendy Winter",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  "Collections!",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Text(
                                      "Shop Now",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Color(0xffFFFFFF),
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 6),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sustainable Bamboo Craft",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xff101623)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
          padding: const EdgeInsets.only(left: 20 , right: 7 , bottom: 20) ,
          child: Row(
            children: [
              Container(
                width: 157,
                height: 211,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                ),
                child:  const Column(
                  children: [
                    Image(image: AssetImage("assets/images/Rectangle1008.png") , width: 157,height: 152,),
                    SizedBox(height: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bamboo Pendant " ,style: TextStyle(
                          color: Color(0xff101623),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),),
                        Text("Lamp" ,style: TextStyle(
                          color: Color(0xff101623),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: 3,),
                        Text("EGP 430.00" ,style: TextStyle(
                          color: Color(0xff7FB04F),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ) ,)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 17,),
              Container(
                width: 157,
                height: 211,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                ),
                child:  const Column(
                  children: [
                    Image(image: AssetImage("assets/images/Rectangle1009.png") , width: 157,height: 152,),
                    SizedBox(height: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bamboo Pendant " ,style: TextStyle(
                          color: Color(0xff101623),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),),
                        Text("Lamp" ,style: TextStyle(
                          color: Color(0xff101623),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("EGP 430.00" ,style: TextStyle(
                              color: Color(0xff717784),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough
                            ) ,),

                            Text("EGP 350.00" ,style: TextStyle(
                              color: Color(0xff7FB04F),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ) ,),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
              Padding(
                padding: const EdgeInsets.only(left: 20 ,right: 21 ,bottom: 108),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 334,
                    height: 337,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                    ),
                    child:   Column(
                      children: [
                        const Image(image: AssetImage("assets/images/Rectangle1110.png") , width: 334,height: 201,),
                        const SizedBox(height: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Find the workshop for you" ,style: TextStyle(
                              color: Color(0xff7FB04F),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),
                            const Text("Join us to learn new crafts and try your hand " ,style: TextStyle(
                              color: Color(0xff101623),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),),
                            const SizedBox(height: 3,),
                            const Text("at fun techniques! " ,style: TextStyle(
                              color: Color(0xff101623),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),),
                            CustomButton(text: "Book Now", width: 115, height: 40, onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
