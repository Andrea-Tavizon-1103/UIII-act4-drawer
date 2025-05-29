import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        elevation: 0.2,
        title: Text("Formulario Tablas"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child:  IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child:  IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.pink),
          accountName: Text("Andrea Tavizon 1103"), 
          accountEmail: Text("andreatavizon@cbtis128.edu.mx"),
          currentAccountPicture:  GestureDetector(
            child: CircleAvatar(
                  child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "AT",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
            ),
          ),
        )

          ],
        ),
      ),
    );
  }
}