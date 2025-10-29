import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';

void showTopSnackBar(BuildContext context, String message) {
  final overlay = Overlay.of(context);
  final entry = OverlayEntry(
    builder: (context) => Positioned(
      top: MediaQuery.of(context).padding.top + 10,
      left: 16,
      right: 16,
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              // SvgPicture.asset(context.icon.checkCircle),
              const Gap(8),
              SizedBox( 
                width: MediaQuery.sizeOf(context).width -100,
                child: Text(message, style: context.style.fontSize16Weight600)),
            ],
          ),
        ),
      ),
    ),
  );

  overlay.insert(entry);

  // 2 soniyadan keyin yopiladi
  Future.delayed(const Duration(seconds: 2)).then((_) => entry.remove());
}
