// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/config/icons.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/generated/locale_keys.g.dart';
import 'package:gap/gap.dart';

class NavigationItem extends StatelessWidget {
  final BuildContext context;
  final int index;
  final int selectedIndex;
  const NavigationItem({
    super.key,
    required this.context,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
          child: SvgPicture.asset(
            _getIcon(index),
            color: selectedIndex == index
                ? context.colors.black
                : context.colors.gray500,
          ),
        ),
        Gap(4),
        Text(
        context.tr(_getTitle(index)),
          style: context.style.fontSize12Weight600.copyWith(
            color: selectedIndex == index
                ? context.colors.black
                : context.colors.gray500,
                
          ),
          maxLines: 2,
        ),
      ],
    );
  }

  String _getIcon(int index) {
    switch (index) {
      case 0:
        return AppIcons().home;
      case 1:
        return AppIcons().catalog;
      case 2:
        return AppIcons().orders;
      case 3:
        return AppIcons().detail;
      default:
        return AppIcons().elementEqual;
    }
  }

   String _getTitle(int index) {
    switch (index) {
      case 0:
        return LocaleKeys.asosiy;
      case 1:
        return LocaleKeys.katalog;
      case 2:
        return LocaleKeys.buyurtmalar;
      case 3:
        return LocaleKeys.asboblar;
      default:
        return LocaleKeys.boshqalar;
    }
  }
}
