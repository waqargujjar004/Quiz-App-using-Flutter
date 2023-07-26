import 'dart:io';
import 'package:flutter/material.dart';
import 'QuizLogic.dart';
QuestionBrain wQuestionBrain= QuestionBrain();
void main() {
  runApp(const QuizApp());
}
class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {


  List<Icon> IconsList = [];

  void  checkUserAnswer(bool userChoice)
  {
 setState(() {

   //if (wQuestionBrain.questionNumber==9)
   if(wQuestionBrain.isTextFinished())
     {

       wQuestionBrain.reset();
       IconsList = [];
     }
   else
     {
       if (wQuestionBrain.getQuestionAnswer()==userChoice)
         {

          IconsList.add(const Icon(
            Icons.check,
            color : Colors.green,

          ));
         }

       else
         {

           IconsList.add(const Icon(
               Icons.close,
               color : Colors.red,
           ));
         }

       wQuestionBrain.getNextQuestion();
     }

 });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      title: 'QuizApp',
      home:  Scaffold(
    appBar: AppBar(
    title: Text("Quiz App"),
     backgroundColor: Colors.redAccent,
    ),
        backgroundColor: Colors.black,
         body: Center(
           child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
             //crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                 height: 40,
               ),
               Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                 children: [
               CircleAvatar(
                 backgroundImage: AssetImage('assets/LOGO.png'),
                 radius: 50.0,
               ),



      ]
               ),
               SizedBox(
                 height: 20,
               ),
                   Text(
                   wQuestionBrain.getQuestionText(),
                   style: TextStyle(fontSize: 20,color: Colors.white , fontWeight: FontWeight.bold, fontFamily: "SourceSansPro")
               ),

               SizedBox(
                 height: 20,
               ),

               Row(
                 children: [
                   Expanded(
                       flex: 300,
                       child: Padding
                         (
                         padding: EdgeInsets.only(left: 20, right: 20),
                         child:  ElevatedButton(onPressed: (){
                           checkUserAnswer(true);
                         },
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.green, // Background color
                             ),
                             child: Text("True" )

                         ),
                       )
                   ),

                 ],
               ),

               SizedBox(
                 height: 10,
               ),

              Row(
                children: [
                  Expanded(
                    flex: 300,
                    child: Padding
                      (
                      padding:EdgeInsets.only(left: 20, right: 20),
                      child:  ElevatedButton(onPressed: (){
                        checkUserAnswer(false);
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent, // Background color
                          ),
                          child: Text("false" )

                      ),
                    )
                  ),

                ],
              ),


               Padding
                 (
                   padding: EdgeInsets.only(top: 280),
                   child: Row(
                     children: IconsList,
                   )
               )
               // )
             ],

           ),
         ),
      ),
    );
  }
}

// Text(
// '$_counter',
// //style: Theme.of(context).textTheme.headline4,
// style: TextStyle(fontFamily: 'Pacifico'),
// ),
// ],
// ),
// ),