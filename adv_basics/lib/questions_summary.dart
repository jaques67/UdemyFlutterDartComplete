import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 188, 172, 215),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 188, 172, 215),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          // textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['user_answer'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 138, 70, 220),
                            fontSize: 16,
                            // fontWeight: FontWeight.normal,
                          ),
                          // textAlign: TextAlign.left,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 57, 54, 210),
                            fontSize: 16,
                            // fontWeight: FontWeight.normal,
                          ),
                          // textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
