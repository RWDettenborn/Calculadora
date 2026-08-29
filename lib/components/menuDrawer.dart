import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/myhomepage.dart';
import '../screens/segunda_page.dart';
import '../screens/terceira_page.dart';

class MenuDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Home"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>
                      MyHomePage(title: "Calculadora Digital 1.0") ));
            },
          ),
          ListTile(
            title: Text("Segunda Tela"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>
                      SegundaPage() ));
            },
          ),
          ListTile(
            title: Text("Terceira Tela"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context) =>
                      TerceiraPage() ));
            },
          )
        ],
      ),
    );

  }

}
