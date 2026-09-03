

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:projeto/components/ElavateButtonComponent.dart';
import '../components/menuDrawer.dart';

class FormularioPage extends StatefulWidget{
  @override
  State<FormularioPage> createState() => _FormularioPageState();

}


class _FormularioPageState extends State<FormularioPage> {
  // Chave do meu formulario deve ser unica
  final _formKey = GlobalKey<FormState>();

  String _jsonOutput ='';
  // Funnção converte para JSON

  void _gerarJson() {
    if (_formKey.currentState?.validate() ?? false) {
      final Map<String, dynamic> data = {
        'nome': _nomeController.text,
        'email': _emailController.text,
        'idade': _idadeController.text,
      };
      setState(() {
        _jsonOutput = jsonEncode(data);
      });
    }
  }


  // Controllers para os campos de input do formulario
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Form"),
        ),

        drawer: MenuDrawer(),

        body: SingleChildScrollView(
          child:
          Container(
            margin: EdgeInsets.all(100),
            child: Column(
              children: [
                // Formulario
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                            controller: _nomeController,
                            decoration: InputDecoration(labelText: 'Nome'),
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Por favor, insira um nome';
                              }
                              return null;
                            },
                        ),
                        TextFormField(
                          controller: _idadeController,
                          decoration: InputDecoration(labelText: 'Nome'),
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Por favor, insira um idade';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _idadeController,
                          decoration: InputDecoration(labelText: 'Nome'),
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Por favor, insira um idade';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20,),

                        ElevateButtonComponent(
                            label: "Salvar",
                            onPressed: _gerarJson,
                            cor: Colors.green),

                        SizedBox(height: 20,),
                        Text(_jsonOutput)
                      ],
                    ),
                ),




              ],

            ),
          ),
        ));
  }

}