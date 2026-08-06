import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/screens/terceira_page.dart';

import 'myhomepage.dart';

class SegundaPage extends StatefulWidget {


  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Segunda tela"),
    ),

        drawer: Drawer(
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
        ),

    body: Center(

    child: Column(
      children: [
        Text("Tela dois deu certo")
      ],


    )));
  }



}