import 'package:flutter/material.dart';
import 'package:smart_query_system/core/theme/pallete.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton(
      {super.key,
      required this.isCollapsed,
      required this.text,
      required this.icon, required this.fontSize});
  final bool isCollapsed;
  final String text;
  final IconData icon;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          child: Icon(
            icon,
            color: Pallete.iconGrey,
            size: 22,
          ),
        ),
        isCollapsed
            ? const SizedBox()
            : FittedBox(
                fit: BoxFit.fitWidth, // Ensures text fits within the container

                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize,
                  ),
                ),
              )
      ],
    );
  }
}
