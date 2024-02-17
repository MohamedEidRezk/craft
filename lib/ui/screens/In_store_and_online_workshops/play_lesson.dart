import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlayLesson extends StatefulWidget {
  const PlayLesson({super.key});

  @override
  State<PlayLesson> createState() => _PlayLessonState();
}

class _PlayLessonState extends State<PlayLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pushReplacement('/courseLessons');
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset("assets/images/video.png",width: 375,height: 250),
        ],
      ),
    );
  }
}
