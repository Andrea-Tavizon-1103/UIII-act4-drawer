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
        backgroundColor: const Color.fromARGB(162, 42, 133, 49),
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
          decoration: BoxDecoration(color: const Color.fromRGBO(243, 147, 179, 1)),
          accountName: Text("Andrea Tavizon 1103"), 
          accountEmail: Text("andreatavizon@cbtis128.edu.mx"),
          currentAccountPicture:  GestureDetector(
            child: CircleAvatar(
                  child: CircleAvatar(
                     radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/Andrea-Tavizon-1103/apple_imagenes_app_flutter/refs/heads/main/images.png'),
            ),
                ),
            ),
          ),
        ),
          InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color:  const Color.fromRGBO(243, 147, 179, 1)),
                title: Text("Home Page"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/productos");},
                leading: Icon(Icons.phone, color: Colors.black),
                title: Text("Productos"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/categorias");},
                leading: Icon(Icons.category, color: Colors.black),
                title: Text("Categorias"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}