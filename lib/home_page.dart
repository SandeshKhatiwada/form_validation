import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Form"),
      centerTitle: true,
      actions: [
        Padding(padding: const EdgeInsets.only(right: 0),
        child: MaterialButton(onPressed: (){
          Navigator.popAndPushNamed(context, 'login');
        },
        child: Icon(Icons.archive_rounded,
        color: Colors.white,

        )
        ),
        ),

      ],
    ),

    body: Container(),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.red,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
          backgroundColor: Colors.red,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
          backgroundColor: Colors.red,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
          backgroundColor: Colors.red,
        ),

      ],
    ),
      
    );

  }
}

