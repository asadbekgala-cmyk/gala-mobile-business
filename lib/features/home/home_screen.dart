import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/features/home/presentation/widgets/active_orders.dart';
import 'package:gala_business/features/home/presentation/widgets/banner_model.dart';
import 'package:gala_business/features/home/presentation/widgets/statistic_chart.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colors.whiteF5,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            color: context.colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.colors.red,
                  ),
                ),
                Gap(8),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Добро пожаловать",
                      style: context.style.fontSize12Weight600.copyWith(
                        color: context.colors.gray600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Gala flowers",
                          style: context.style.fontSize16Weight600,
                        ),
                        Gap(4),
                        SvgPicture.asset(context.icon.arrowCircleRight),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: context.colors.green,
                  ),
                  child: Text(
                    "Активные",
                    style: context.style.fontSize12Weight600.copyWith(
                      color: context.colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(context.route.notification);
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colors.gray100,
                    ),
                    child: SvgPicture.asset(context.icon.notifaction),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                      child: Text(
                        "Баннеры с новостями",
                        style: context.style.fontSize16Weight700,
                      ),
                    ),
                    Gap(8),
                    SizedBox(
                      height: 137,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                useRootNavigator: true,
                                builder: (context) {
                                  return BannerModal();
                                },
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                left: index == 0 ? 16 : 8,
                                right: index == 4 ? 16 : 0,
                              ),
                              height: 137,
                              width: 275,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: context.colors.red,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ActiveOrdersWidget(),
              StatisticWidget(),

              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                            "Последний: 1 год",
                            style: context.style.fontSize12Weight600,
                          ),
                        ),
                      ],
                    ),
                    Gap(12),
                    ListView.builder(
                      itemCount: 8,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: context.colors.gray100,
                                  ),
                                  color: context.colors.gray100.withOpacity(
                                    0.25,
                                  ),
                                ),
                                child: Text(
                                  "${index + 1}",
                                  style: context.style.fontSize16Weight600,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                width:
                                    MediaQuery.sizeOf(context).width - 32 - 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: context.colors.gray200,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
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
                                          "Роза",
                                          style:
                                              context.style.fontSize16Weight600,
                                        ),
                                        Text(
                                          "13 шт",
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
                                    Text(
                                      "20 млн сум",
                                      style: context.style.fontSize14Weight600,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
