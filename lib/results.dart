import 'dart:math';

import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  double height;
  double weight;
  ResultsPage({super.key, required this.height, required this.weight});

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
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("the result is "),
            Text(results.toStringAsFixed(2)),
            Text("$note"),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.refresh))
          ],
        ),
      ),
    );
  }
}
