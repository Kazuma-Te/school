import 'package:flutter/material.dart';
import 'package:flutter_school_app/Login.dart';
import 'package:flutter_school_app/Message.dart';
import 'package:flutter_school_app/login_page.dart';
import 'package:flutter_school_app/signup_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
                  MaterialPageRoute(builder: (context) => BookListPage()),
                );
//                  setState(() => _city = 'Honolulu, HI');
//                  Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('メッセージ'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage('かずま')),
                );
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('ログイン'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            ListTile(
              title: Text('新規登録'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
            ),
            ListTile(
              title: Text(
                'ログアウト',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                setState(() => _city = 'Tokyo, Japan');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: WebView(
        initialUrl: 'https://www.pu-toyama.ac.jp',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {},
      ),
    );
  }
}
