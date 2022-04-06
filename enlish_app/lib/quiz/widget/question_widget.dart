import 'package:enlish_app/quiz/models/category.dart';
import 'package:enlish_app/quiz/models/question.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final Category category;
  const QuestionWidget({Key? key , required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: category.questions.length,
        itemBuilder: (context , index) {
          final question = category.questions[index];
          return buildQuestion(question: question);
        }
    );
  }

  Widget buildQuestion({required Question question}) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.text , style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 8,),
      ],
    );
  }
}
