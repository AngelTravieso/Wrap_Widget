import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wrap App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wrap'),
        ),
        body: Center(
            child: Wrap(
          alignment: WrapAlignment.spaceAround,
          // direction: Axis.vertical,
          spacing: 10.0,
          children: const <Widget>[
            Tag(texto: 'Meal Gear'),
            Tag(texto: 'Call of Duty'),
            Tag(texto: 'Mario Bros'),
            Tag(texto: 'Zelda'),
            Tag(texto: 'GTA'),
            Tag(texto: 'Sonic'),
          ],
        )),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String texto;

  const Tag({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(texto[0]),
        backgroundColor: Colors.white,
      ),
      label: Text(texto, style: const TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue,
    );
  }
}
