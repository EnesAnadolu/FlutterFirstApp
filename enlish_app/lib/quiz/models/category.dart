

import 'package:enlish_app/quiz/models/question.dart';
import 'package:flutter/material.dart';

class Category{

    final String categoryName;
    final String description;
    final IconData icon;
    final Color backGroundColor;
    final List<Question> questions;
    final String image;

    Category({required this.categoryName ,required this.description, required this.icon , required this.backGroundColor,required this.questions , required this.image});
}