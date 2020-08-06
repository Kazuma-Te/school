import 'package:flutter/material.dart';
import 'package:flutter_school_app/Login.dart';
import 'package:flutter_school_app/Message.dart';

import 'book_list_page.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),
);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  var _city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('S I S'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Sharing Information at School',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('ホームページ'),
                onTap: () {
                  setState(() => _city = 'Los Angeles, CA');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('学校通信'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookList()),
                  );
//                  setState(() => _city = 'Honolulu, HI');
//                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('ログイン'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
              ListTile(
                title: Text('メッセージ'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Message()),
                  );
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('ログアウト',
                style: TextStyle(
                  color: Colors.red,
                ),),
                onTap: () {
                  setState(() => _city = 'Tokyo, Japan');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SISへようこそ',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                _city,
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ],
          ),

        ));
  }
}
