import 'dart:async';
import 'package:flutter/material.dart';
import 'package:student_marks_calculation_app/calculation.dart';
import 'package:student_marks_calculation_app/labelText.dart';
import 'package:student_marks_calculation_app/lessons.dart';

class StudentMarks extends StatefulWidget {
  const StudentMarks({Key? key}) : super(key: key);

  @override
  State<StudentMarks> createState() => _StudentMarksState();
}

// 2024, 6, 8
class _StudentMarksState extends State<StudentMarks> {
  static const duration = Duration(seconds: 1);
  String hour = "";
  String minute = "";
  String second = "";
  Timer? timer;
  int hourInt = 0;
  int minuteInt = 0;
  int secondInt = 0;
  final int timerMaxSeconds = 60;
  bool isActive = true;

  void handleTick() {
    try {
      setState(() {
        final birthday = DateTime(2024, 6, 8); // our exam date
        final date = DateTime.now(); // current time
        final difference = birthday.difference(
            date); // We subtracted the current time from our exam date
        List<String> splitted = difference.toString().split(":");
        List<String> splitteds = splitted[2].split(".");
        // I place the times into the string
        hour = splitted[0];
        minute = splitted[1];
        second = splitteds[0];
      });
    } catch (e, s) {
      print(s);
    }
  }

  @override
  Widget build(BuildContext context) {
    timer ??= Timer.periodic(duration, (Timer t) {
      handleTick();
    });
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF6789CA),
        appBar: AppBar(
          backgroundColor: const Color(0xFF345FB4),
          title: const Center(
            child: Text("Student Mark"),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: LabelText(
                    label: "Hour",
                    value: hour.toString().padLeft(2, "0"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: LabelText(
                    label: "Minute",
                    value: minute.toString().padLeft(2, "0"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: LabelText(
                    label: "Second",
                    value: second.toString().padLeft(2, "0"),
                  ),
                ),
              ],
            ),
            // Point calculation location
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF345FB4),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: const Lessons(),
            ),
            const Calculation(),
          ],
        ),
      ),
    );
  }
}
