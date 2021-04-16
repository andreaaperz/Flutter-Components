import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Avatar Page'), actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('AP'),
                backgroundColor: Colors.red,
              )),
          Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://phantom-elmundo.unidadeditorial.es/0c89044330045ead050e4c34e2ba34d5/crop/0x50/1023x731/resize/746/f/jpg/assets/multimedia/imagenes/2021/03/14/16157042694477.jpg'))),
          Container(
              padding: EdgeInsets.all(2.0),
              child: CircleAvatar(
                child: Text('AP',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w900,
                    )),
                backgroundImage: NetworkImage(
                    'https://image.freepik.com/foto-gratis/texturas-superficie-agua-mar-oceano_74190-7495.jpg'),
                radius: 40,
              ))
        ]),
        body: Center(
            child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading-gif'),
          image: NetworkImage(
              'https://cnnespanol.cnn.com/wp-content/uploads/2021/03/210308120515-beyonce-super-169.jpg?quality=100&strip=info&w=414&h=311&crop=1'),
          fadeInDuration: Duration(milliseconds: 1000),
        )));
  }
}
