

import 'package:enlish_app/word_page.dart';
import 'package:enlish_app/words.dart';
import 'package:flutter/material.dart';

class Notebook extends StatefulWidget {
  const Notebook({Key? key}) : super(key: key);

  @override
  _NotebookState createState() => _NotebookState();
}

class CardItem {
  String word = '';
  String words_mean = '';
  String image = '';

  CardItem(this.word, this.words_mean, this.image);
}

class _NotebookState extends State<Notebook> {
  List<String> words = ["consult", "hesitate", "distinct", "obtain", "strict"];

  List<CardItem> items = [
    CardItem("Consult", "Danışmak , başvurmak", 'assets/images/consult.jpg'),
    CardItem("Excitement", "Heyecan , coşku", 'assets/images/excitemen.jpg'),
    CardItem("Judge", "Yargı", 'assets/images/judge.jpg'),
    CardItem("Accurate", "Kesin , doğru", 'assets/images/accurate.jpg'),
    CardItem("Presence", "Mevcudiyet , varlık", 'assets/images/presence.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelime defterim"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.add),
        tooltip: "Kelime bul",
      ),
      body: Container(
          height: 250,
          child: ListView.separated(
            //ListView.builder dersek kutular arasında boşluk bırakmaz
              padding: EdgeInsets.all(16),
              scrollDirection: Axis
                  .horizontal, //Bunu demezsek sadece bir tane kutu oluşur //BU KISIMI UNUTMA //vertical dersek aşağı kaydırır
              itemCount: items.length,
              separatorBuilder: (context, index) => SizedBox(
                width: 12,
              ),
              itemBuilder: (context, index) => buildCard(items[index]))),
    );
  }

  Widget buildCard(CardItem item) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Expanded(
              child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20), //kutunun kenarlarını ovalleştirir
                      child: Material(
                        child: Ink.image(
                            image: AssetImage(item.image),
                            fit: BoxFit.cover,
                            child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WordPage(item: item))))),
                      )))),
          SizedBox(
            height: 4,
          ),
          Text(item.word, style: TextStyle(fontSize: 24, color: Colors.black))
        ],
      ),
    );
  }
}


