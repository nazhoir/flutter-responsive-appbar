import 'package:daily_code_1_responsive_appbar/responsive.dart';
import 'package:daily_code_1_responsive_appbar/topbar.dart';
import 'package:flutter/material.dart';

import 'menu_drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.blue[900]),
              title: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
                height: 30,
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(),
            ),
      endDrawer: MenuDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.red,
        child: const Center(
          child: Text(
            "Responsive AppBar",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
