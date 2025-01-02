import 'package:flutter/material.dart';
import 'package:smart_query_system/core/theme/pallete.dart';

class SearchBarButton extends StatefulWidget {
  const SearchBarButton({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  // ignore: library_private_types_in_public_api
  _SearchBarButtonState createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isHovered ? Pallete.proButton : Pallete.transparentColor),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Pallete.iconGrey,
              size: 20,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              widget.text,
              style: TextStyle(color: Pallete.textGrey),
            )
          ],
        ),
      ),
    );
  }
}
