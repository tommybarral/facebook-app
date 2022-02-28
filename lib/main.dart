import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  Widget personalInfo(IconData icon, String title) {
    return Container(
      child: Row(
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook app'),
        centerTitle: true
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/0/0e/Landscape-2454891_960_720.jpg', fit: BoxFit.cover,),
                  ),
                  Positioned(
                    top: 82,
                    child: Container(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.network(
                            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHNob3R8ZW58MHx8MHx8&w=1000&q=80',
                        fit: BoxFit.fill,
                        ),

                      ),
                    ),
                  ),
                ],
              ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 5.0, bottom: 10.0, right: 5.0),
            child: Column(
              children: [
                Center(child: Text('Tommy Barral', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),),
                Center(child: Text('Un jour les chats domineront le monde, mais pas aujourd\'hui, \n c\'est l\'heure de la sieste'),),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(15),),),
                child: Center(child: Text('Modifier le profil', style: TextStyle(color: Colors.white),),),
              ),
              Container(
                height: 50,
                width: 55,
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(15),),),
                child: Center(child: Icon(Icons.phone_enabled, color: Colors.white,)),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('A propos de moi'),
                personalInfo(Icons.home, 'Hyères les Palmiers, France'),
                personalInfo(Icons.campaign_outlined, 'Développeur Android'),
                personalInfo(Icons.liquor, 'En couple'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
