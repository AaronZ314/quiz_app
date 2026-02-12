import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'QUESTION GOES HERE',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: "Answer 1", onTap: (){}),
          AnswerButton(answerText: "Answer 2", onTap: (){}),
          AnswerButton(answerText: "Answer 3", onTap: (){}),
          AnswerButton(answerText: "Answer 4", onTap: (){}),
        ],
      ),
    );
  }
}
