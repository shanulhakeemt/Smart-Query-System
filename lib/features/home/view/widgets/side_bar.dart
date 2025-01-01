import 'package:flutter/material.dart';
import 'package:smart_query_system/core/theme/pallete.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: Pallete.sideNav,
      width: isCollapsed ? 64 : 128,
      duration: const Duration(milliseconds: 100),
      child: Column(
        crossAxisAlignment:
            isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Icon(
            Icons.auto_awesome_mosaic,
            color: Pallete.whiteColor,
            size: 30,
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: isCollapsed
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                child: Icon(
                  Icons.add,
                  color: Pallete.iconGrey,
                  size: 22,
                ),
              ),
              isCollapsed
                  ? const SizedBox()
                  : Text(
                      'Home',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: Icon(
              Icons.search,
              color: Pallete.iconGrey,
              size: 22,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: Icon(
              Icons.language,
              color: Pallete.iconGrey,
              size: 22,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: Icon(
              Icons.auto_awesome,
              color: Pallete.iconGrey,
              size: 22,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: Icon(
              Icons.cloud_outlined,
              color: Pallete.iconGrey,
              size: 22,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: Pallete.iconGrey,
                size: 22,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
