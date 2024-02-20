import 'package:craft/ui/widgets/custom_text_field.dart';
import 'package:craft/ui/widgets/listview_item_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class CoursesAndWorkshop extends StatefulWidget {
  const CoursesAndWorkshop({super.key});

  @override
  State<CoursesAndWorkshop> createState() => _CoursesAndWorkshopState();
}

class _CoursesAndWorkshopState extends State<CoursesAndWorkshop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Courses & Workshop",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                )),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             const Padding(
              padding: EdgeInsets.only(left: 5, right: 6, top: 31, bottom: 7),
              child: CustomTextFormField(
                width: 324,
                height: 40,
                prefixIcon:
                    Icon(Icons.search_outlined, color: Color(0xFFA1A8B0)),
                hintText: "Search",
                hintStyle: TextStyle(color: Color(0xFFA1A8B0)),
                suffixIcon:
                    Icon(Icons.list, color: Color(0xFF7FB04F)),
              ),
            ),
            Expanded(
                child: ListView.separated(separatorBuilder: (context, index) => const SizedBox(height: 16,),
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context.pushReplacement('/bookingCourse');
                  },
                  child: const ItemCard()),
              itemCount: 5,
            ))
          ],
        ),
      ),
    );
  }
}
