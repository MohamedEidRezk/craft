import 'package:craft/ui/widgets/Custom_Button.dart';
import 'package:craft/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class BookingCourse extends StatelessWidget {
  const BookingCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 375,
            height: 393,
            child: Column(children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/Rectangle 1004.png",
                    width: 375,
                    height: 304,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 69),
                    child: IconButton(
                        onPressed: () {
                          context.pushReplacement('/coursesAndWorkshop');
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 20,
                ),
                child: Text("Beginner’s Guide to Crochet Workshop",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ]),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        Icon(Icons.calendar_month, color: Color(0xFF7FB04F)),
                        SizedBox(
                          width: 14,
                        ),
                        Text("5 Nov",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                      SizedBox(height: 16),
                      Row(children: [
                        Icon(Iconsax.clock, color: Color(0xFF7FB04F)),
                        SizedBox(
                          width: 14,
                        ),
                        Text("01:00 PM",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                      SizedBox(height: 16),
                      Row(children: [
                        Icon(Icons.location_on_outlined,
                            color: Color(0xFF7FB04F)),
                        SizedBox(
                          width: 14,
                        ),
                        Text("Zagazig",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                      SizedBox(height: 16),
                      Row(children: [
                        Icon(Iconsax.video, color: Color(0xFF7FB04F)),
                        SizedBox(
                          width: 14,
                        ),
                        Text("9 Lesson",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                      SizedBox(height: 11),
                      Row(children: [
                        Icon(Iconsax.ticket, color: Color(0xFF7FB04F)),
                        SizedBox(
                          width: 14,
                        ),
                        Text("EGP 99.00",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    top: 24,
                    bottom: 24,
                    right: 24,
                  ),
                  child: CustomButton(
                      text: "Book Now",
                      onPressed: () {},
                      width: 327,
                      height: 56),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 7, bottom: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("About the Workshop",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Expanded(
                              child: Text(
                                  maxLines: 5,
                                  "You've heard a lot about crochet and you've asked yourself why you should learn to crochet? It is old, but it is always a medicine, and it also causes many psychological benefits, That's why it will take you step by step",
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Color(0xFFA1A8B0),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                "Read more",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7FB04F)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                            "By the end of this online workshop, you will be able to",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                            maxLines: 5,
                            "Identify the most important materials and tools used to make crochet; In addition to learning about the most famous abbreviations and stitch symbols in the pattern, which help you make different shapes easily.",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Color(0xFFA1A8B0),
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: const EdgeInsets.only(left: 28, top: 12),
                          child: Row(children: [
                            Image.asset("assets/images/Ellipse 18.png",
                                height: 80, width: 80),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset("assets/images/Ellipse 20.png",
                                height: 80, width: 80),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset("assets/images/Ellipse 19.png",
                                height: 80, width: 80),
                          ]),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                            maxLines: 5,
                            "Applying variables using crochet from scratch and step-by-step processing, such as: making a crochet stand, how to make a circle, and the circular unit;  In addition to learning to connect these units.",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Color(0xFFA1A8B0),
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        const SizedBox(height: 24),
                        const Text("About the Crafter",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text("Salma, our Crochet Instructor from Zagazig",
                            style: TextStyle(
                                color: Color(0xFFA1A8B0),
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        const SizedBox(
                          height: 17,
                        ),
                        Container(
                          width: 335,
                          height: 152,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          padding: const EdgeInsetsDirectional.only(
                              top: 11, start: 16, bottom: 20, end: 16),
                          child: Column(
                            children: [
                              Row(children: [
                                Image.asset(
                                  "assets/images/Ellipse 17.png",
                                  height: 55,
                                  width: 55,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Column(
                                  children: [
                                    Text("Salma Mostafa",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    Text("Crochet Instructor",
                                        style: TextStyle(
                                            color: Color(0xFFA1A8B0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                const SizedBox(width: 77),
                                const Column(children: [
                                  Icon((Icons.favorite),
                                      color: Color(0xFFE50010)),
                                  Text("1,773",
                                      style: TextStyle(
                                          fontSize: 7,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA1A8B0))),
                                ]),
                              ]),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                        text: 'Message',
                                        onPressed: () {
                                          context.pushReplacement('/myCourses');
                                        },
                                        textColor: const Color(0xFF7FB04F),
                                        width: 145,
                                        height: 46,
                                        backgroundColor: Colors.white,
                                        borderColor: const Color(0xFF7FB04F)),
                                  ),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  Expanded(
                                    child: CustomButton(
                                      text: "Following",
                                      onPressed: () {
                                        context.pushReplacement('/myCourses');
                                      },
                                      width: 145,
                                      height: 46,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
