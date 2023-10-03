import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  String lessonName;
  dynamic trueController;
  dynamic falseController;
  String correct;

  Lesson({
    Key? key,
    required this.lessonName,
    required this.trueController,
    required this.falseController,
    required this.correct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Turkish score
          Expanded(
            flex: 1,
            child: Text(
              lessonName,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: TextField(
                controller: trueController,
                keyboardType: TextInputType.number,
                maxLength: 2,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  counterText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                  hintText: "True",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: TextField(
                controller: falseController,
                keyboardType: TextInputType.number,
                maxLength: 2,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  counterText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15,
                  ),
                  hintText: "False",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text("$correct Correct"),
        ],
      ),
    );
  }
}
