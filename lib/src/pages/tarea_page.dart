import 'dart:math';
import 'package:flutter/material.dart';

class TareaPage extends StatefulWidget {
  @override
  _TareaPageState createState() => _TareaPageState();
}

class _TareaPageState extends State<TareaPage> {
  String _nombre = "";
  int _caracteres = 0;

  double _width = 100, _height = 100;
  Color _color = Colors.cyan;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);
  /* final random = Random(); */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea super difícil'),
        backgroundColor: Colors.cyan.shade200,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: <Widget>[
          _crearinput(),
          Divider(),
          _repintar(),
          Align(
            alignment: Alignment(0,0),
          child: AnimatedContainer(
              width: _width,
              height: _height,
              decoration:
                  BoxDecoration(borderRadius: _borderRadius, color: _color),
              duration: Duration(seconds: 2),
              curve: Curves.linear))
        ],
      ),
    );
  }

  Widget _crearinput() {
    return TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
            counter: Text('Caracteres $_caracteres'),
            hintText: 'Escribe aquí',
            hintStyle: TextStyle(color: Colors.cyan.shade500),
            filled: true,
            fillColor: Colors.cyan.shade50,
            helperText: 'Llegando a 10 haces cosas chidas',
            prefixIcon: Icon(
              Icons.text_fields_rounded,
              color: Colors.cyan.shade800,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            )),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
            _caracteres = _nombre.length;
          });
          _cambiarForma(_caracteres);
        }
        );
  }

  Widget _repintar() {
    return ListTile(
        title: Text('Su texto es $_nombre',
            style: TextStyle(color: Colors.cyan.shade800)));
  }

  void _cambiarForma(caracteres) async {
    final random = Random();
    if (caracteres <= 10) {
      setState(() {
        _width = random.nextInt(100).toDouble();
        _height = _width;
        _color = Color.fromRGBO(
            random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
        _borderRadius = BorderRadius.circular(0);
      });
    } else if (caracteres > 10 && caracteres <= 20) {
      setState(() {
        _width = random.nextInt(100).toDouble();
        _height = _width;
        _color = Color.fromRGBO(
            random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
        _borderRadius = BorderRadius.circular(50);
      });
    } else if (caracteres > 20) {
      setState(() {
        _width = random.nextInt(100).toDouble();
        _height = random.nextInt(100).toDouble();
        _color = Color.fromRGBO(
            random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
        _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
      });
    }
  }

  /* void _cambiarForma() async {
    for (var i = 1; i <= _caracteres; i++) {
     await Future.delayed(const Duration(seconds: 3), () {
        final random = Random();
        setState(() {
          _width = random.nextInt(100).toDouble();
          _height = random.nextInt(100).toDouble();
          _color = Color.fromRGBO(
           random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
          _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
        });
        print('vuelta $i');
      });
    }
  } */
}