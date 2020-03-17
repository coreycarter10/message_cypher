import 'package:flutter/material.dart';

import 'pages/home_page.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() => runApp(MessageCypher());

class MessageCypher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Cypher',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      home: HomePage(title: 'Message Cypher'),
    );
  }
}

