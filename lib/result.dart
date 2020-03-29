import 'package:flutter/material.dart';

class Result extends StatelessWidget {

final int resultScore;
final Function resetHandler;

Result(this.resultScore, this.resetHandler);

String get resultPhrase{
  String resultText;
  if (resultScore >= 18 ) {
    resultText = 'তুমি আর কেমন  হবা, এই মুটামুটি  চলে  আর কি';
  }
  else if (resultScore >= 13 && resultScore <18) {
    resultText = 'তোমাকে আর কি কইতাম, তুমি ভালো ও না আবার খারাপ ও না। হাবাইত্তার মতো চায়া থাকো, কি আর করবা।';
  }
  else if (resultScore >= 8 && resultScore <13) {
    resultText = 'তুমি একটা বাল। বুঝছো ';
  }
  else {
    resultText = 'গু খা তুই।';
  }
  return resultText;
}

 @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,), 
            textAlign: TextAlign.center,),
            FlatButton(onPressed: resetHandler, 
            child: Text('Restart Quiz!',),
            textColor: Colors.blue,
            ),
        ],
      ),   
    );
  }
}