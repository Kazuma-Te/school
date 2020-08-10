import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage(this._userName);
  final String _userName;

  @override
  _ChatPageState createState() => new _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("チャットページ"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: <Widget>[
              new Flexible(
                child: new ListView.builder(
                  padding: new EdgeInsets.all(8.0),
                  reverse: true,
                  itemBuilder: (_, int index) {},
                  itemCount: 10,
                ),
              ),
              new Divider(height: 1.0),
              Container(
                margin: EdgeInsets.only(bottom: 20.0, right: 10.0, left: 10.0),
                child: Row(
                  children: <Widget>[
                    new Flexible(
                      child: new TextField(
                        decoration:
                            new InputDecoration.collapsed(hintText: "メッセージの送信"),
                      ),
                    ),
                    new Container(
                      child: new IconButton(
                          icon: new Icon(
                            Icons.send,
                            color: Colors.blue,
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
