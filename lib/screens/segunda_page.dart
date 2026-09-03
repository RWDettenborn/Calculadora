import 'package:flutter/material.dart';
import 'package:projeto/components/menuDrawer.dart';




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

        drawer: MenuDrawer(),

    body: SingleChildScrollView(
    child:
    Container(
      margin: EdgeInsets.all(100),
      child: Column(
          children: [

            Image.network("https://wallpapers.com/images/hd/4k-new-york-city-night-aprvk4dzv30pf7bp.jpg",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text("A vida do CLT"),
            Image.asset("assets/images/top-sea.jpg")
          ],

      ),
    ),
));
  }



}