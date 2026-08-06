import 'package:flutter/material.dart';
import 'package:projeto/screens/segunda_page.dart';
import 'package:projeto/screens/terceira_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter1 = 0;
  double _counter2 = 0;
  double _result = 0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }
  void _decrementCounter1() {
    setState(() {
      _counter1--;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }
  void _decrementCounter2() {
    setState(() {
      _counter2--;
    });
  }

  void _somar() {
    setState(() {
      _result = _counter1 + _counter2;
    });
  }
  void _subtrair() {
    setState(() {
      _result = _counter1 - _counter2;
    });
  }
  void _multiplicar() {
    setState(() {
      _result = _counter1 * _counter2;
    });
      }
  void _dividir() {
  setState(() {
  _result = _counter1 / _counter2;
  });
  }

  void _limpar() {
    setState(() {
      _result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Home"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context) =>
                        MyHomePage(title: "navegou") ));
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

          mainAxisAlignment: .center,
          children: [
            const Text('Primeiro Número'),
            Text(
              '$_counter1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.lightBlueAccent
                    ),
                    onPressed: (){
                      _incrementCounter1();
                    },
                    child: Text('Aumentar')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.redAccent
                    ),
                    onPressed: (){
                      _decrementCounter1();
                    },
                    child: Text('Diminuir')
                )
              ],
            ),

            const SizedBox(height: 40),

            const Text('Segundo Número'),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 20
                      ),
                      backgroundColor: Colors.lightBlueAccent
                  ),
                    onPressed: (){
                      _incrementCounter2();
                    },
                    child: Text('Aumentar')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.redAccent
                    ),
                    onPressed: (){
                      _decrementCounter2();
                    },
                    child: Text('Diminuir')
                )
              ],
            ),

            const SizedBox(height: 40),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.blue
                    ),
                    onPressed: (){
                      _somar();
                    },
                    child: Text('+')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.blue
                    ),
                    onPressed: (){
                      _subtrair();
                    },
                    child: Text('-')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.blue
                    ),
                    onPressed: (){
                      _multiplicar();
                    },
                    child: Text('*')
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.blue
                    ),
                    onPressed: (){
                      _dividir();
                    },
                    child: Text('/')
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text('Resultado'),
            Text(
              '$_result',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      _limpar();
                    },
                    child: Text('Limpar')
                ),

              ],
            ),

          ],
        ),



      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter1,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );
  }



}
