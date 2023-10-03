import 'package:flutter/material.dart';
import 'package:student_marks_calculation_app/textEditingControllers.dart';

class Degree extends StatelessWidget {
  const Degree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Text(
              "Degree Grade:",
              style: TextStyle(color: Colors.black),
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
                controller: degreeController,
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
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  hintText: "Your degree grade",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
