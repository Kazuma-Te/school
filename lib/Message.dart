import 'package:flutter/material.dart';

class Message extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//真ん中に行く
          children: <Widget>[
            Text('hey'),
//            Center(
//              child: RaisedButton(
//                child: Text('戻る'),
//                onPressed: (){
//                  Navigator.pop(context);
//                },
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}