import 'package:flutter/material.dart';
import 'package:student_marks_calculation_app/degree.dart';
import 'package:student_marks_calculation_app/lesson.dart';
import 'package:student_marks_calculation_app/textEditingControllers.dart';

class Lessons extends StatelessWidget {
  const Lessons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Turkish
        Lesson(
          lessonName: "Turkish",
          trueController: turkishTrueController,
          falseController: turkishFalseController,
          correct: turkishCorrect,
        ),
        // Social
        Lesson(
          lessonName: "Social",
          trueController: socialTrueController,
          falseController: socialFalseController,
          correct: socialCorrect,
        ),
        // Maths
        Lesson(
          lessonName: "Maths",
          trueController: mathsTrueController,
          falseController: mathsFalseController,
          correct: mathsCorrect,
        ),
        // Science
        Lesson(
          lessonName: "Science",
          trueController: scienceTrueController,
          falseController: scienceFalseController,
          correct: scienceCorrect,
        ),
        const Degree(),
      ],
    );
  }
}
