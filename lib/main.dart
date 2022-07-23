import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
    //can also be written as void main() => runApp...
// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  var questIndex = 0;

  void answerQuest(){
    questIndex = questIndex + 1;
    // ignore: avoid_print
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your go to meal',
      'if you were to be a drink, what would you be?',
    ];
    return  MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('Quest'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            questions[questIndex],
            ),
          const ElevatedButton(onPressed: answerQuest, 
          child: Text('answer 1'),
          ),
          const ElevatedButton(onPressed: () => print('answer 2 picked'), 
          child: Text('answer 2'),
          ),
          const ElevatedButton(onPressed: () => print('answer 3 picked'), 
          child: Text('answer 3'),
          ),

        ],
      ),
    ),
    );
  }
}