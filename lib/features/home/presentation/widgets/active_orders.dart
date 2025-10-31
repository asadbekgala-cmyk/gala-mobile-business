
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';

class ActiveOrdersWidget extends StatelessWidget {
  const ActiveOrdersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.symmetric(vertical: 16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Активные заказы - 4",
                  style: context.style.fontSize16Weight700,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: context.colors.gray100,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Смотреть все",
                    style: context.style.fontSize12Weight600,
                  ),
                ),
              ],
            ),
          ),
          Gap(8),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 16 : 8,
                    right: index == 4 ? 16 : 0,
                  ),
                  padding: EdgeInsets.all(12),
                  // height: 215,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: context.colors.gray200),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: context.colors.red,
                            ),
                          ),
                          Gap(8),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Заказ #123456",
                                style:
                                    context.style.fontSize16Weight600,
                              ),
                              Text(
                                "1 шт",
                                style: context
                                    .style
                                    .fontSize12Weight600
                                    .copyWith(
                                      color: context.colors.gray600,
                                    ),
                              ),
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: SvgPicture.asset(
                              context.icon.arrowCircleRight,
                            ),
                          ),
                        ],
                      ),
                      Gap(8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFF8F9FA),
                          border: Border.all(
                            color: context.colors.gray100,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "10 минут до принятия",
                                  style: context
                                      .style
                                      .fontSize12Weight600,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 4.5,
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: context.colors.green,
                                    borderRadius:
                                        BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        context.icon.clock,
                                      ),
                                      Gap(4),
                                      Text(
                                        "08:42",
                                        style: context
                                            .style
                                            .fontSize12Weight600
                                            .copyWith(
                                              color: context
                                                  .colors
                                                  .white,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(color: context.colors.gray100),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Статус заказа",
                                  style: context
                                      .style
                                      .fontSize12Weight600,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 4,
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(10),
                                    border: Border.all(
                                      color: context.colors.green,
                                    ),
                                    color: context.colors.green
                                        .withOpacity(0.08),
                                  ),
                                  child: Text(
                                    "Новый заказ",
                                    style: context
                                        .style
                                        .fontSize12Weight600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(8),
                      CustomButton(
                        height: 41,
                        child: Text(
                          "Принять заказ",
                          style: context.style.fontSize12Weight600
                              .copyWith(color: context.colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

