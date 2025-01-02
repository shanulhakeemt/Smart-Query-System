import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_query_system/core/theme/pallete.dart';
import 'package:smart_query_system/features/home/view/widgets/side_bar_button.dart';

final isCollapedProvider = StateProvider<bool>(
  (ref) => true,
);

class SideBar extends ConsumerWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedContainer(
      color: Pallete.sideNav,
      width: ref.watch(isCollapedProvider) ? 64 : 150,
      duration: const Duration(milliseconds: 100),
      child: LayoutBuilder(builder: (context, constraints) {
        final fontSize = constraints.maxWidth>120?
        constraints.maxWidth / 8.9:constraints.maxWidth>78?constraints.maxWidth/10:constraints.maxWidth / 20;
        return Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Icon(
              Icons.auto_awesome_mosaic,
              color: Pallete.whiteColor,
              size: ref.watch(isCollapedProvider) ? 30 : 60,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: ref.watch(isCollapedProvider)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  SideBarButton(
                    icon: Icons.add,
                    isCollapsed: ref.watch(isCollapedProvider),
                    text: 'Home',
                    fontSize: fontSize,
                  ),
                  SideBarButton(
                    icon: Icons.search,
                    isCollapsed: ref.watch(isCollapedProvider),
                    text: 'Search',
                    fontSize: fontSize,
                  ),
                  SideBarButton(
                    icon: Icons.language,
                    isCollapsed: ref.watch(isCollapedProvider),
                    text: 'Spaces',
                    fontSize: fontSize,
                  ),
                  SideBarButton(
                    icon: Icons.auto_awesome,
                    isCollapsed: ref.watch(isCollapedProvider),
                    text: 'Discover',
                    fontSize: fontSize,
                  ),
                  SideBarButton(
                    icon: Icons.cloud_outlined,
                    isCollapsed: ref.watch(isCollapedProvider),
                    text: 'Library',
                    fontSize: fontSize,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                ref.read(isCollapedProvider.notifier).update(
                      (state) => !state,
                    );
              },
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                    child: Icon(
                      ref.watch(isCollapedProvider)
                          ? Icons.keyboard_arrow_right
                          : Icons.keyboard_arrow_left,
                      color: Pallete.iconGrey,
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        );
      }),
    );
  }
}
