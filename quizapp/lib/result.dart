import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'main.dart';
class Result extends StatelessWidget {
  final VoidCallback q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultphrase {
    String resultText;
    if (resultScore >= 70) {
      resultText = "You are Awesome ";
    } else if (resultScore >= 40) {
      resultText = "Pretty likable";
    } else {
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your Score is $resultScore",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            resultphrase,
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Restart The App",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            onPressed: q,
          )
        ],
      ),
    );
  }
}
