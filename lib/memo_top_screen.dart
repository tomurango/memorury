import 'package:flutter/material.dart';

class MemoTopScreen extends StatefulWidget {
  @override
  _MemoTopScreenState createState() => _MemoTopScreenState();
}

class _MemoTopScreenState extends State<MemoTopScreen> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(        
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text('Card03'),
                    subtitle: Text('Card SubTitle'),
                  ),
                  Text('hello'),
                ],
              ),
              color: Colors.green, // Card自体の色
              margin: const EdgeInsets.all(30),
              elevation: 8, // 影の離れ具合
              shadowColor: Colors.black ,// 影の色
              shape: RoundedRectangleBorder( // 枠線を変更できる
                borderRadius: BorderRadius.circular(10),
              ),
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