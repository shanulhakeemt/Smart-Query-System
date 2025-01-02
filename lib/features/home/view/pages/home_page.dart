import 'package:flutter/material.dart';
import 'package:smart_query_system/core/theme/pallete.dart';
import 'package:smart_query_system/features/home/view/widgets/search_section.dart';
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
        children: [
          const SideBar(),
          Expanded(
            child: Column(
              children: [
                const Expanded(child: SearchSection()),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Pro',
                          style: TextStyle(
                              fontSize: 14, color: Pallete.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Enterprise',
                          style: TextStyle(
                              fontSize: 14, color: Pallete.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Store',
                          style: TextStyle(
                              fontSize: 14, color: Pallete.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Blog',
                          style: TextStyle(
                              fontSize: 14, color: Pallete.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Careers',
                          style: TextStyle(
                              fontSize: 14, color: Pallete.footerGrey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'English (English)',
                          style: TextStyle(
                              fontSize: 14, color: Pallete.footerGrey),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
