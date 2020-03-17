import 'package:flutter/material.dart';

import '../utils/cypher_utils.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: TextField(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: const Text('Encode'),
                onPressed: () => null,
              ),
              RaisedButton(
                child: const Text('Decode'),
                onPressed: () => null,
              ),
            ],
          ),
          Expanded(
            child: TextField(),
          ),
        ],
      ),
    );
  }
}
