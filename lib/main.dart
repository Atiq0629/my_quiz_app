import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<MyApp> {

  var questions = [
      {
        'questionText': 'তোমার পছন্দের রং কি?',
        'answers': [
          {'text': 'কালো', 'score':5},
          {'text': 'লাল', 'score':1},
          {'text': 'নীল', 'score':2},
          {'text': 'সাদা', 'score':3},
          {'text': 'জানিনা', 'score':0},
        ],
      },
      {
        'questionText': 'তোমার পছন্দের প্রাণী কোনটি ?',
        'answers': [
          {'text':'বিড়াল', 'score':2},
          {'text':'কুকুর', 'score':3},
          {'text':'বাঘ', 'score':5},
          {'text':'ঘোড়া', 'score':1},
          {'text': 'জানিনা', 'score':0},
          ],
      },
      {
        'questionText': 'তোমার পছন্দের খাবার কোনটি ?',
        'answers': [
          {'text': 'কাচ্চি বিরিয়ানী', 'score':4},
          {'text': 'তেহারী', 'score':3},
          {'text': 'খিচুড়ি', 'score':5},
          {'text': 'পান্তা ভাত', 'score':1},
          {'text': 'জানিনা', 'score':0},
        ],
      },
      {
        'questionText': 'তোমার পছন্দের লেখক কে ?',
        'answers': [
          {'text':'হুমায়ুন আহমেদ', 'score':4},
          {'text':'ইমদাদুল হক মিলন', 'score':2},
          {'text':'আনিসুল হক', 'score':1},
          {'text':'অনিক আমিন', 'score':5},
          {'text': 'জানিনা', 'score':0},
        ],
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answeQuestion(int score){
    
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex+1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('কুইজ অ্যাপ'),
          ),
          body: _questionIndex < questions.length ?
          Quiz(questions: questions, questionIndex: _questionIndex, answerQuestion: _answeQuestion) :
          Result(_totalScore, _resetQuiz),
      ),
    );
  }
}