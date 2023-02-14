import 'package:flutter/material.dart';
import 'package:memorury/TaskCard.dart';

class MemoTopScreen extends StatefulWidget {
  @override
  _MemoTopScreenState createState() => _MemoTopScreenState();
}

class _MemoTopScreenState extends State<MemoTopScreen> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.event),
                    Text("カード"),
                  ]
                ),
                TaskCard(
                  title: 'hogetitle',
                  memo: 'hogehoge',
                  createdAt: DateTime.now(),
                  expires: 7,
                )
              ]
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.archive),
                    Text("アーカイブ"),
                  ],
                ),
                ListTile(
                  title: Text("hpgea-ka"),
                  subtitle: Text("hogehoge"),
                ),
              ]
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.done),
                    Text("完了"),
                  ]
                ),
                ListTile(
                  title: Text("完了のタイトル"),
                  subtitle: Text("hogekanryo"),
                ),
              ]
            ),
          ],
            //child: Container(color: Colors.red),
        ),
      ),
    );
  }
  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(        
          padding: EdgeInsets.all(30),
          child: Container(color: Colors.red),
        ),
      ),
    );
  }
  */
}