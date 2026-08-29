import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/screens/segunda_page.dart';

import '../components/menuDrawer.dart';
import 'myhomepage.dart';

class TerceiraPage extends StatefulWidget {


  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Terceira tela"),
        ),

        drawer: MenuDrawer(),

        body: Center(

            child: Column(
              children: [
                Text("Tela treis deu certo")
              ],


            )));
  }



}