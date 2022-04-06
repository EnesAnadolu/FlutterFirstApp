import 'package:flutter/material.dart';

class WordSeach extends StatefulWidget {
  const WordSeach({Key? key}) : super(key: key);

  @override
  _WordSeachState createState() => _WordSeachState();
}

class _WordSeachState extends State<WordSeach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [IconButton(onPressed: () {
          showSearch(context: context, delegate: CustomSearchDelegate());
        }, icon: Icon(Icons.search))],
      ),
      body: Center(
        child: Text("Bu sayfada kelime arayabilirsiniz"),
      ),
    );
  }


}

class CustomSearchDelegate extends SearchDelegate{

  List<String> allWords = ["doctor" , "nurse" , "teacher" , "lawyer" , "architect"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed:(){query = "";} , icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){close(context, null);}, icon: Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for(var word in allWords){
      if(word.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(word);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context , index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
            trailing: IconButton(icon: Icon(Icons.add), onPressed: (){},),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for(var word in allWords){
      if(word.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(word);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context , index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
            trailing: IconButton(icon: Icon(Icons.add), onPressed: (){},),
          );
        });
  }
}