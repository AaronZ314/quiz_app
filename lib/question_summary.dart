import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    //Wrap everything in a sizedBox to make the scrollable questions a certain size
    return SizedBox(
      height: 500,
      //Wrap everything in SingleChildScrollView to allow the questions to scroll
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {

            final bool isCorrect = data['user_answer'] == data['correct_answer'];

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  style: GoogleFonts.lato(
                    //ternary operation that checks our boolean value, if true then make number green, if false make number red
                    color: isCorrect ? Colors.green: Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ((data['question_index'] as int) + 1).toString(),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 260,
                  child: Column(
                    children: [
                      Text(
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        data['question'] as String,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        style: GoogleFonts.lato(
                          color: Colors.red,
                          fontSize: 18,
                        ),
                        data['user_answer'] as String,
                      ),
                      Text(
                        style: GoogleFonts.lato(
                          color: Colors.green,
                          fontSize: 18,
                        ),
                        data['correct_answer'] as String,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
