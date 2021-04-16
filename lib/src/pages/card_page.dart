import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Card Page')),
        body: ListView(children: <Widget>[
          _cardt1(),
          SizedBox(
            height: 30,
          ),
          _card2(),
          SizedBox(
            height: 30,
          ),
          _card3(),
          SizedBox(
            height: 30,
          ),
        ]));
  }

  Widget _cardt1() {
    return Card(
        child: Column(children: <Widget>[
      ListTile(
          leading: Icon(Icons.assistant_photo, color: Colors.cyanAccent),
          title: Text("hola"),
          subtitle: Text(
              "JUANHBJABSFJHBDJASDHBAJSBDHAJSDHBAJSDBHASJDBHASJDBAJDBPJP")),
      Row(
        children: <Widget>[
          FlatButton(child: Text('Aceptar'), onPressed: () {}),
          FlatButton(child: Text('Aceptar'), onPressed: () {})
        ],
      )
    ]));
  }

  Widget _card2() {
    final card = Container(
        child: Column(children: <Widget>[
      FadeInImage(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2021/01/21/17/58/herbstastern-5938056_1280.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 500),
          height: 200.0,
          fit: BoxFit.cover),
      Container(
          padding: EdgeInsets.all(5.0), child: Text('Descripcion de la imagen'))
    ]));

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 10,
                offset: Offset(2.0, 10.0))
          ],
          color: Colors.white),
    );
  }

  Widget _card3() {
    final card = Container(
        child: Column(children: <Widget>[
      Container(
          padding: EdgeInsets.all(5.0),
          child: Text('LUGARES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w100,
              ))),
      FadeInImage(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2016/11/06/05/36/lake-1802337_1280.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 500),
          height: 80.0,
          width: 380,
          alignment: Alignment(-.9, 0),
          fit: BoxFit.none),
      FadeInImage(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_1280.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 500),
          height: 80.0,
          width: 380,
          fit: BoxFit.none),
      FadeInImage(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2018/08/12/15/29/hintersee-3601004_1280.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 500),
          height: 80.0,
          width: 380,
          fit: BoxFit.none),
    ]));

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 1,
            spreadRadius: 1,
            //offset: Offset(2.0,10.0)
          )
        ],
        color: Colors.blueGrey,
      ),
      padding: EdgeInsets.all(9.0),
    );
  }
}
