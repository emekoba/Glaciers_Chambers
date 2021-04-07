import 'package:flutter/material.dart';
import 'package:glaciers/Widgets/Header.dart';
import 'package:glaciers/Widgets/Style/AppTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: "/home",
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => Glaciers(),
        );
      },
    );
  }
}

class Glaciers extends StatefulWidget {
  Glaciers({Key key}) : super(key: key);

  @override
  _GlaciersState createState() => _GlaciersState();
}

class _GlaciersState extends State<Glaciers> {
  ScrollController _scrollController = ScrollController();

  String _currentPage = "home";

  Map<String, Map> _pages = {
    "home": {
      "main": <String, String>{
        "page description": "",
        "page name": "",
      },
      "banner": <String, dynamic>{
        "image": AssetImage("lib/Resources/Photos/background3.jpeg")
      },
    },
    "about us": {
      "main": <String, String>{
        "page description": "",
        "page name": "",
      },
      "banner": <String, dynamic>{"image": AssetImage("")},
    },
    "our services": {
      "main": <String, String>{
        "page description": "",
        "page name": "",
      },
      "banner": <String, dynamic>{"image": AssetImage("")},
    },
    "our team": {
      "main": <String, String>{
        "page description": "",
        "page name": "",
      },
      "banner": <String, dynamic>{"image": AssetImage("")},
    },
    "contact us": {
      "main": <String, String>{
        "page description": "",
        "page name": "",
      },
      "banner": <String, dynamic>{"image": AssetImage("")},
    },
  };

  void changePage(route) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: _scrollController,
        radius: Radius.zero,
        isAlwaysShown: true,
        child: ListView(
          controller: _scrollController,
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                color: Colors.black87,
                image: DecorationImage(
                  image: _pages[_currentPage]["banner"]["image"],
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Header(headerBtns: [
                    "home",
                    "about us",
                    "our services",
                    "our team",
                    "contact us",
                  ], changePage: changePage),
                ],
              ),
            ),
            Container(height: 200, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
