import 'package:flutter/material.dart';

import '../utils/cypher_utils.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const padding = EdgeInsets.all(8);
  
  final _textController = TextEditingController();
  final _encodedController = TextEditingController();

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
      body: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(
              child: _buildMessageCard(ctrl: _textController, operation: "encode")
            ),
            Padding(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    child: Row(
                      children: <Widget>[
                        const Text('Encode'),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    onPressed: () {
                      _encodedController.text = alter(_textController.text, operation: encodeCodeUnit);
                      _textController.clear();
                    },
                  ),
                  RaisedButton(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.chevron_left),
                        const Text('Decode'),
                      ],
                    ),
                    onPressed: () {
                      _textController.text = alter(_encodedController.text, operation: decodeCodeUnit);
                      _encodedController.clear();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: _buildMessageCard(ctrl: _encodedController, operation: "decode")
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageCard({@required TextEditingController ctrl, @required String operation}) {
    return Card(
      color: Colors.blue,
      child: Padding(
        padding: padding,
        child: TextField(
          controller: ctrl,
          maxLines: 8,
          decoration: InputDecoration.collapsed(
              hintText: 'Enter a message to $operation...'),
        ),
      ),
    );
  }
}
