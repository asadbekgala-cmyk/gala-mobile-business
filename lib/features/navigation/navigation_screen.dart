import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/extension/extension.dart';

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
        color: context.colors.whiteF5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(4, (index) {
              return GestureDetector(
                onTap: () {
                  widget.statefulNavigationShell.goBranch(
                    index,
                    initialLocation:
                        widget.statefulNavigationShell.currentIndex == index,
                  );
                },
                child: Column(
                  children: [
                    SvgPicture.asset(context.icon.catalog),
                    Text("Главный", style: context.style.fontSize12Weight600),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
