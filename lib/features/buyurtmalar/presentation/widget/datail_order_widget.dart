
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';

class DetailOrderWidget extends StatelessWidget {
  const DetailOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Детали заказа",
            style: context.style.fontSize16Weight700,
          ),
          Gap(8),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            separatorBuilder: (context, index) {
              return Divider(color: context.colors.gray100);
            },
            itemBuilder: (context, index) {
              return Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  iconColor: context.colors.black,
                  tilePadding: EdgeInsets.zero,
    
                  title: Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: context.colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Gap(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MonoLove",
                            style: context.style.fontSize14Weight600
                                .copyWith(
                                  color: context.colors.gray700,
                                ),
                          ),
                          Text(
                            "1 120 000 сум",
                            style: context.style.fontSize16Weight600,
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        height: 24,
                        child: SvgPicture.asset(
                          context.icon.checkbox,
                          color: context.colors.gray500,
                        ),
                      ),
                      Gap(8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3.5,
                        ),
                        decoration: BoxDecoration(
                          color: context.colors.gray100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "1 шт",
                          style: context.style.fontSize12Weight600,
                        ),
                      ),
                      // Gap(8),
                    ],
                  ),
                  childrenPadding: EdgeInsets.zero,
                  expandedAlignment: Alignment.topLeft,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.start,
                      children: List.generate(5, (index) {
                        return Container(
                          margin: EdgeInsets.only(right: 8, bottom: 8),
                          // color: context.colors.black,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 8),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                  color: context.colors.red,
                                ),
                              ),
                              Text(
                                "Роза (12x)",
                                style:
                                    context.style.fontSize12Weight600,
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
