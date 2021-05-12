import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 250.0;
  double _valorSlider2 = 250;
  bool _bloquearCheck = false;
  bool _bloquearSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Divider(),
            _crearCheck(),
            Divider(),
            _crearSlider2(),
            Divider(),
            _crearSwitch(),
            Divider(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 0.0,
      max: 500.0,
      onChanged: (!_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearCheck() {
    /* return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
                  _bloquearCheck =  valor;
                });
      },
    ); */
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSlider2() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de imagen',
      //divisions: 20,
      value: _valorSlider2,
      min: 0.0,
      max: 500.0,
      onChanged: (!_bloquearSwitch)
          ? null
          : (valor) {
              setState(() {
                _valorSlider2 = valor;
              });
            },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Habilitar Slider'),
      value: _bloquearSwitch,
      onChanged: (valor) {
        setState(() {
          _bloquearSwitch = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.show.news/__export/1576640333183/sites/debate/img/2019/12/17/shawn_mendes_crop1576640239582.jpg_423682103.jpg'),
      width: _valorSlider,
      height: _valorSlider2,
      fit: BoxFit.fill,
    );
  }
}