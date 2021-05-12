import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";
  String _fecha = "";

  List<String> _oficios = ['Juan', 'Juan2', 'Juan3'];

  String _opcionesPreselect = 'Juan';

  TextEditingController _inputFieldDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs personalizados'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: <Widget>[
            _crearinput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _repintar(),
            Divider(),
            _crearPassword(),
            Divider(),
            _crearLista(),
                        Divider(),
                        _crearFecha(context),
                      ],
                    ));
              }
            
              Widget _crearinput() {
                return TextField(
                    //autofocus: true,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                        counter: Text('caracteres 0'),
                        hintText: 'Nombre completo',
                        labelText: 'Nombre',
                        helperText: 'solo letras',
                        suffixIcon: Icon(Icons.accessibility),
                        icon: Icon(Icons.account_circle),
                        border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
                    onChanged: (valor) {
                      setState(() {
                        _nombre = valor;
                        print(_nombre);
                      });
                    });
              }
            
              Widget _repintar() {
                return ListTile(title: Text('Su nombre es $_nombre'));
              }
            
              Widget _crearEmail() {
                return TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'email',
                      labelText: 'email',
                      suffixIcon: Icon(Icons.alternate_email),
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  onChanged: (valor) => setState(() {
                    _email = valor;
                  }),
                );
              }
            
              Widget _crearPassword() {
                return TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'pass',
                      labelText: 'pass',
                      suffixIcon: Icon(Icons.lock_open),
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  onChanged: (valor) => setState(() {
                    _password = valor;
                  }),
                );
              }
            
              Widget _crearFecha(BuildContext context) {
                return TextFormField(
                    controller: _inputFieldDateController,
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                        hintText: 'Fecha de nacimiento',
                        labelText: 'Fecha',
                        suffixIcon: Icon(Icons.perm_contact_calendar),
                        icon: Icon(Icons.calendar_today),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      _selectFecha(context);
                    });
              }
            
              void _selectFecha(BuildContext context) async {
                DateTime picked = await showDatePicker(context: context, initialDate: new DateTime.now(), firstDate: new DateTime(2017), lastDate: new DateTime(2030));
                if (picked != null){
                  setState(() {
                    _fecha = DateFormat('dd/MM/yyyy').format(picked).toString();
                    _inputFieldDateController.text = _fecha;
                   
                  });
                }
              }
            
            List<DropdownMenuItem<String>> getOpciones(){
              List<DropdownMenuItem<String>> lista = new List();
              _oficios.forEach((oficio){
                lista.add(DropdownMenuItem(
                  value: oficio,
                  child: Text(oficio),
                ));
              });
            }
            Widget  _crearLista() {
              return Row(children: <Widget>[
                Icon(Icons.select_all),
                SizedBox(width: 30.0),
                Expanded(child: DropdownButton(
                  value: _opcionesPreselect,
                  items: getOpciones(),
                  onChanged: (opt){
                    setState((){
                      _opcionesPreselect = opt;
                    });
                  }
                ),)
              ]);
            }
}
