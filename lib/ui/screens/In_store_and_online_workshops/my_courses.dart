import 'package:craft/ui/widgets/listview_item_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "My Courses",
            style: TextStyle(
              color: Color(0xFF101623),
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
        padding: const EdgeInsets.only(top: 30, left: 20, right: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("2 Courses",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF101623))),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        context.pushReplacement('/courseLessons');
                      },
                      child: const ItemContainer()),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 16,
                      ),
                  itemCount: 20),
            )
          ],
        ),
      ),
    );
  }
}
