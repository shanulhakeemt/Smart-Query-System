import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_query_system/core/theme/pallete.dart';
import 'package:smart_query_system/features/home/view/widgets/search_bar_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Where Knowledge begins',
          style: GoogleFonts.ibmPlexMono(
              fontWeight: FontWeight.w400,
              letterSpacing: -0.5,
              height: 1.2,
              fontSize: 40),
        ),
        const SizedBox(
          height: 32,
        ),
        Container(
          width: 700,
          decoration: BoxDecoration(
              color: Pallete.searchBar,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Pallete.searchBarBorder, width: 1.5)),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search anything...',
                      hintStyle:
                          TextStyle(fontSize: 16, color: Pallete.textGrey),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SearchBarButton(
                      icon: Icons.auto_awesome_outlined,
                      text: 'Focus',
                    ),
                    SearchBarButton(
                      icon: Icons.add_circle_outline_outlined,
                      text: 'Attach',
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Pallete.submitButton,
                          borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Pallete.background,
                        size: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
