import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Flutter Qr Code',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  final String data = "it is changed  here";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
//            Text("not understans ",
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              fontSize: 24.0,
//            ),),
            QrImage(
              data: data,
              size: 250,
              gapless: true,
              errorCorrectionLevel: QrErrorCorrectLevel.Q,
              foregroundColor: Colors.green[300],
              backgroundColor: Colors.black,
            )

          ],
        ),
      ),
    );
  }

}