import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  final myFocusNode = FocusNode();
  final myController = TextEditingController();
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                //autofocus: true,
                decoration: InputDecoration(
                  //border: InputBorder.none,

                    hintText: 'ここに入力してください'
                ),
                onChanged: (text) {
                  print("First text field: $text");
                  name = text;//後でnameをサーバに送る
                  print(name);
                },
              ),
              TextField(
                focusNode: myFocusNode,
                controller: myController,
              ),
              RaisedButton(
                child: Text('ログインする'),
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the user has entered by using the
                        // TextEditingController.
                        content: Text(myController.text),
                      );
                    },
                  );
                  myFocusNode.requestFocus();
                  print(myController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}