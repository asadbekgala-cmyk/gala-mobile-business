
import 'package:flutter/material.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';

class AllNotifications extends StatelessWidget {
  const AllNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ).copyWith(top: index == 0 ? 16 : 0, bottom: 8),
              padding: EdgeInsets.all(16),
              // height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Новый заказ",
                    style: context.style.fontSize16Weight600,
                  ),
                  Text(
                    "10 июля 2025 / 13:00",
                    style: context.style.fontSize12Weight600.copyWith(
                      color: context.colors.gray600,
                    ),
                  ),
                  Gap(4),
                  Text(
                    "Поступил новый заказ на розу Rosa",
                    style: context.style.fontSize14Weight500,
                  ),
                  Gap(4),
                  CustomButton(
                    height: 41,
                    borderRadius: BorderRadius.circular(16),
                    color: context.colors.gray200,
                    child: Text(
                      "Посмотреть заказ сейчас",
                      style: context.style.fontSize14Weight500,
                    ),
                  ),
                ],
              ),
            ),
          Align( 
            alignment: AlignmentGeometry.centerLeft,
            child: Container( 
              height: 12, 
              width: 12, 
              margin: EdgeInsets.only(left: 8),
              decoration: BoxDecoration( 
                color: context.colors.green, 
                shape: BoxShape.circle
              ),
            ),
          ),
          ],
        );
      },
    );
  }
}
