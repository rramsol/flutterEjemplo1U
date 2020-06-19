import 'package:flutter/material.dart';

 class ContadorPage extends StatefulWidget{
  @override
  State createState() => _ContadorPage();

 }

 class _ContadorPage extends State<ContadorPage>{

   final estiloTexto = TextStyle( fontSize: 30);
   int _contador=0;

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
              '$_contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _crearBotones (){
    return Row(
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer),
        Expanded( child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      ],
    );

  }

  void _agregar(){
    setState(() {
      _contador++;
    });
  }

   void _sustraer(){
     setState(() {
       _contador--;
     });
   }

   void _reset(){
     setState(() {
       _contador=0;
     });
   }

 }