import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CourseLessons extends StatefulWidget {
  const CourseLessons({Key? key}) : super(key: key);

  @override
  State<CourseLessons> createState() => _CourseLessonsState();
}

class _CourseLessonsState extends State<CourseLessons> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pushReplacement('/myCourses');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(top: 9.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Beginner’s Guide to Crochet ",
                style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Workshop",
                style: TextStyle(
                  color: Color(0xFF101623),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Lesson 1-9",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF101623),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    context.pushReplacement('/playLesson');
                  },
                  child: ListTile(
                    contentPadding: const EdgeInsetsDirectional.only(start: 16),
                    autofocus: true,
                    leading: Icon(
                      Icons.play_circle,
                      size: 35,
                      color: _selectedIndex == index ? const Color(0xFF7FB04F) : const Color(0xFFE5E7EB),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: _selectedIndex == index ? const Color(0xFF7FB04F) : const Color(0xFFE5E7EB),
                        width: 1.0,
                      ),
                    ),
                    title: const Text(
                      "1. Introduction to Crochet",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF101623),
                      ),
                    ),
                    subtitle: const Text(
                      "12:15",
                      style: TextStyle(
                        color: Color(0xFFA1A8B0),
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
