import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Show Alert',
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey.shade600,
              shape: StadiumBorder(),
              minimumSize: Size(120, 50)),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.blueGrey.shade200,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              title: Text(
                'Flutter Cards',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.bubble_chart_rounded,
                    color: Colors.white,
                    size: 80,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Flutter Go To Cards',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pushNamed('card'),
                  child: Text('Cards'),
                  style: TextButton.styleFrom(
                    primary: Colors.cyan.shade800,
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancel'),
                  style: TextButton.styleFrom(
                    primary: Colors.pink,
                  ),
                ),
              ]);
        });
  }
}
