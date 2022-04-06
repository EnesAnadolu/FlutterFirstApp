import 'package:enlish_app/vacobulary_notebook.dart';
import 'package:flutter/material.dart';

class WordPage extends StatelessWidget {
  final CardItem item ;
  const WordPage({Key? key , required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.word),
      ),
      body: Column(
        children: [
          AspectRatio(aspectRatio: 4/3 ,child: Image.asset(item.image,fit: BoxFit.cover,)),
          const SizedBox(height: 8,),
          Text(item.words_mean , style: TextStyle(color: Colors.black12 ,fontSize: 32),),

        ],
      ),
    );
  }
}
