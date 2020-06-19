


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = TextStyle( fontSize: 30);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hola Mundo'
        ),
        centerTitle: true,
        backgroundColor: Colors.black12,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Numero de tabs: ',
              style: estiloTexto
            ),
            Text(
                '0',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add
        ),
        onPressed: (){
          print('hola mundo');
        },
      ) ,
      floatingActionButtonLocation:FloatingActionButtonLocation.miniStartTop,
    );
  }

}