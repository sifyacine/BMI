import 'dart:math';

import 'package:bmi/colors.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ResultsPage extends StatelessWidget {
  double height;
  double weight;
  bool isMale;
  ResultsPage({super.key, required this.height, required this.weight, required this.isMale});

  @override
  Widget build(BuildContext context) {
    double results = weight/pow(height / 100, 2);
    String note = '';
    switch(results){
      case < 16:
        note = "sever thinness";
        break;
        case > 18.5 && < 25:
          note = "normal";
          break;
          case > 25 && < 30:
            note = "overweight";
            break;
            case > 30:
              note = " obese";
              break;
    }
    return Scaffold(
      backgroundColor: isMale ? kBlueColor : kRedColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "BMI is ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                results.toStringAsFixed(2),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                note,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 30,),
              IconButton(onPressed: (){
                Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                  ),
      ],
          ),
        ),
      ),
    );
  }
}
