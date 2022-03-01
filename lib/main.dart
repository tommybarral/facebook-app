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

  Widget pictureProfile(double radius, String titleImage) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(titleImage),
    );
  }

  // function with name arguments
  // fonction sous forme de nom
  Widget personalInfo({@required IconData icon, @required String title}) {
    return Container(
      child: Row(
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
    );
  }
  
  Widget picturePeople(String titlepicture, String name, double size) {
    return Column(
      children: [
        Container(
            height: 175,
            width: size / 3,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey)],
              image: DecorationImage(image: NetworkImage(titlepicture),
              ),
            ),
        ),
        Center(child: Text(name),),
      ],
    );
  }

  Text timeText(String time) {
    return Text(
      'Il y a $time',
      style: TextStyle(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook profile'),
        centerTitle: true
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/0/0e/Landscape-2454891_960_720.jpg',
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 125),
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: pictureProfile(72, 'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 5.0, bottom: 10.0, right: 5.0),
              child: Column(
                children: [
                  Center(child: Text('Tommy Barral', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),),
                  Center(child: Text('profile description that the user can write, could be anything / description du profile que l\'utilisateur peux écrire, peut être n\'importe quoi', softWrap: true, maxLines: 3,),),
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
                  child: Center(child: Icon(Icons.phone_enabled, color: Colors.white,),),
                ),
              ],
            ),
            Divider(thickness: 2),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('A propos de moi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  personalInfo(icon: Icons.home, title: 'Hyères les Palmiers, France'),
                  personalInfo(icon: Icons.work, title: 'Développeur Android'),
                  personalInfo(icon: Icons.favorite, title: 'En couple'),
                  Divider(thickness: 2),
                  Text('Amis', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ],
              ),
            ),
            Row(
              children: [
                picturePeople('https://images.unsplash.com/photo-1586693231040-e89840e7d805?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBpbiUyMGZvcmVzdHxlbnwwfHwwfHw%3D&w=1000&q=80', 'isabelle', width),
                picturePeople('https://images.unsplash.com/photo-1586693231040-e89840e7d805?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW4lMjBpbiUyMGZvcmVzdHxlbnwwfHwwfHw%3D&w=1000&q=80', 'isabelle', width),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text('Mes posts', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ),
            Container(
              margin: EdgeInsets.only(top: 3, left: 3, right: 3),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Padding(padding: EdgeInsets.all(8.0),
                    child: pictureProfile(20, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png'),),
                    Text('Tommy Barral'),
                    Spacer(),
                    timeText('5min'),
                  ],
                  ),
                  Image.network(
                    'https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('test this, test this, test this, test this, test this, test this, test this, test this, test this, test this',),
                 ),
                  Divider(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.favorite),
                      Text('0 like'),
                      Icon(Icons.message),
                      Text('0 Commentaires'),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3, left: 3, right: 3),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Padding(padding: EdgeInsets.all(8.0),
                      child: pictureProfile(20, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png'),),
                    Text('Tommy Barral'),
                    Spacer(),
                    timeText('5min'),
                  ],
                  ),
                  Image.network(
                    'https://www.lense.fr/wp-content/uploads/2020/12/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('test this, test this, test this, test this, test this, test this, test this, test this, test this, test this',),
                  ),
                  Divider(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.favorite),
                      Text('0 like'),
                      Icon(Icons.message),
                      Text('0 Commentaires'),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
