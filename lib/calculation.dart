import 'package:flutter/material.dart';
import 'package:student_marks_calculation_app/textEditingControllers.dart';

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            // Turkish grade calculation
            double turkishTrue = double.parse(turkishTrueController.text);
            double turkishFalse = double.parse(turkishFalseController.text) * 0.25;
            double turkishPoint = turkishTrue - turkishFalse;
            String turkceGrade = turkishPoint.toString();

            // Social grade calculation
            double socialTrue = double.parse(socialTrueController.text);
            double socialFalse = double.parse(socialFalseController.text) * 0.25;
            double socialPoint = socialTrue - socialFalse;
            String socialGrade = socialPoint.toString();

            // Maths grade calculation
            double mathsTrue = double.parse(mathsTrueController.text);
            double mathsFalse = double.parse(mathsFalseController.text) * 0.25;
            double mathsPoint = mathsTrue - mathsFalse;
            String mathsGrade = mathsPoint.toString();

            // Science grade calculation
            double scienceTrue = double.parse(scienceTrueController.text);
            double scienceFalse = double.parse(scienceFalseController.text) * 0.25;
            double sciencePoint = scienceTrue - scienceFalse;
            String scienceGrade = sciencePoint.toString();

            double nonDegreeResult = (turkishPoint * 3.3) +
                (sciencePoint * 3.3) +
                (mathsPoint * 3.4) +
                (sciencePoint * 3.4) +
                100;
            double degreeResult = (turkishPoint * 3.3) +
                (sciencePoint * 3.3) +
                (mathsPoint * 3.4) +
                (sciencePoint * 3.4) +
                100 +
                (double.parse(degreeController.text) * 0.6);
            showAlertDialog(
              context,
              nonDegreeResult.toString(),
              degreeResult.toString(),
            );
          });
        },
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: const Color(0xFF345FB4),
        ),
        child: const Text(
          "Calculate My Grade",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}

showAlertDialog(
    BuildContext context, String nonDegreeResult, String degreeResult) {
  Widget okButton = ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal[200],
    ),
    child: const Text("Great!"),
  );
  AlertDialog alertDialog = AlertDialog(
    backgroundColor: Colors.white,
    elevation: 25,
    title: const Text("Your result"),
    content: Text(
        "nonDegree Result: $nonDegreeResult\nDegree Result: $degreeResult"),
    actions: [
      okButton,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
