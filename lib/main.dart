import 'package:flutter/material.dart';
import 'package:flutter_app/Gallery.dart';
import 'package:flutter_app/Home.dart';
import 'package:flutter_app/Person.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    Home(),
    Person(),
    Gallery(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Hello World"),
         centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
             UserAccountsDrawerHeader(accountName: Text("Asad Ullah"), accountEmail: Text("au4098@gmail.com"),
               decoration: BoxDecoration(
                 color: Colors.teal,
               ),
               otherAccountsPictures: [
                 CircleAvatar(
                   backgroundColor: Colors.white,
                   child: Text("A"),
                 ),
                 CircleAvatar(
                   backgroundColor: Colors.white,
                   child: Text("B"),
                 ),
               ],
               currentAccountPicture: CircleAvatar(
                 backgroundImage: AssetImage('images/asad.jpg'),
               ),
             ),
            ListTile(
              tileColor: Colors.deepOrange,
              subtitle: Text("Hello World"),
              title: Text("Home"),
              leading: Icon(Icons.home,color: Colors.black,),
            ),
            Divider(),
            ListTile(
              contentPadding:EdgeInsets.only(left: 140.0),
              subtitle: Text("Hello World"),
              title: Text("Contact"),
              trailing: Icon(Icons.home,size: 40.0,),
            ),
            Divider(),
            ListTile(
              subtitle: Text("Hello World"),
              title: Text("Gallery"),
              leading: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              subtitle: Text("Hello World"),
              title: Text("Dashboard"),
              trailing: Icon(Icons.home),
            ),
            Divider(),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        iconSize: 20.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Person"),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games_rounded),
            title: Text("Gallery"),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;

          });
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,backgroundColor: Colors.teal,
      child: Icon(Icons.add),),

    );
  }
}


