import 'package:flutter/material.dart';

import 'question.dart';
class QuestionBrain

{
  int questionNumber=0;
  List  questionslist = [
    Question(questionText: " Do you  know me ", questionAnswer: true),
    Question(questionText: "shall i like drugs", questionAnswer: false),
    Question(questionText: "Do you Like Lahore", questionAnswer: true),
    Question(questionText: "is islamabad is capital of Pakistan",
        questionAnswer: true),
    Question(questionText: " Is university of central punjab a good university",
        questionAnswer: true),
    Question(questionText: "is hyundai Tucson new model spotted in lahore ",
        questionAnswer: false),
    Question(
        questionText: "shall i buy a new car this year", questionAnswer: true),
    Question(questionText: " do you like mobile development  ",
        questionAnswer: true),
    Question(questionText: " you are a good personality", questionAnswer: true),
    Question(questionText: " is flutter easy", questionAnswer: false),
  ];


  String  getQuestionText()
  {
    return questionslist[questionNumber].questionText;
  }

  bool  getQuestionAnswer()
  {
    return questionslist[questionNumber].questionAnswer;
  }

  void getNextQuestion()
  {
    if (questionNumber < questionslist.length )
      {
        questionNumber++;
      }
  }

  bool isTextFinished()
  {
    if (questionNumber>= questionslist.length-1)
      {
        return true;
      }
    else {
      return false;
    }

  }

  void reset ()
  {
    questionNumber=0;
  }

}