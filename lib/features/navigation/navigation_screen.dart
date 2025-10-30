import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/features/navigation/presentation/widgets/navbar_item.dart';

import 'package:go_router/go_router.dart';

class NavigationScreen extends StatefulWidget {
  final StatefulNavigationShell statefulNavigationShell;
  const NavigationScreen({super.key, required this.statefulNavigationShell});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.statefulNavigationShell,
      bottomNavigationBar: BottomAppBar(
        color: context.colors.white,
padding: EdgeInsets.zero,
        height: 70,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(5, (index) {
                return GestureDetector(
                  onTap: () {
                    widget.statefulNavigationShell.goBranch(
                      index,
                      initialLocation:
                          widget.statefulNavigationShell.currentIndex == index,
                    );
                  },
                  child: SizedBox(
                     width: (MediaQuery.sizeOf(context).width-28)/5,
                    child: NavigationItem(
                      context: context,
                      index: index,
                      selectedIndex: widget.statefulNavigationShell.currentIndex,
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
