
import 'package:enlish_app/events.dart';
import 'package:enlish_app/home_page.dart';
import 'package:enlish_app/sign_up.dart';
import 'package:enlish_app/vacobulary_notebook.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: MainPage())); //Eğer MaterialApp ile sarmazsak hata alıyor
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var users = Map();
  var names = [];
  String name = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneme"),
      ),
      body: Center(
        child: SingleChildScrollView(
          //bottom overflowed hatasını çözmek için bu widget kullanılır
          reverse: true,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 75),
                  width: 200,
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/images/owl.png'),
                  )),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "İsim soyisim" , border: OutlineInputBorder() ,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Şifre" , border: OutlineInputBorder()),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));} , child: Text("Kayıt ol"), color: Colors.lightBlue, ),
                  SizedBox(width: 30,),
                  RaisedButton(
                    color: Colors.lightBlue,
                      child: Text("Giriş yap"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()));
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void SignIn(){

  }
}

String NameLogin(String name, List<dynamic> names) {
  var temp = '';
  if (name.length < 3) {
    for (String isim in names) {
      if (isim != name) {
        names.add(name);
      } else {
        temp =
            'Bu isimde zaten bir kullanıcı bulunmaktadır. Farklı bir isim deneyiniz ';
      }
    }
  } else {
    temp = 'İsim 3 karakterden büyük olmalıdır';
  }
  return temp;
}

String PasswordLogin(String password, List<dynamic> passwords) {
  var temp = '';
  if (password.length < 8) {
    for (String sifre in passwords) {
      if (sifre != password) {
        passwords.add(password);
      } else {
        temp =
            'Bu şifre zaten bir kullanıcıya ait. Farklı bir şifre deneyiniz ';
      }
    }
  } else {
    temp = 'Şifre en az 8 karakter olmalıdır';
  }
  return temp;
}

void alertScene(BuildContext context, String hata) {
  var alert = AlertDialog(
    title: Text("Hata"),
    content: Text(hata),
  );
  showDialog(context: context, builder: (BuildContext) => alert);
}
