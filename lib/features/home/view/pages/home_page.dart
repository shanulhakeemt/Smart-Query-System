import 'package:flutter/material.dart';
import 'package:smart_query_system/features/home/view/widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [SideBar(), Column()],
      ),
    );
  }
}
