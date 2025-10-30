import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gala_business/features/home/presentation/widgets/banner_model.dart';
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
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Продажи",
                              style: context.style.fontSize16Weight700,
                            ),
                            Text(
                              "3 шт",
                              style: context.style.fontSize14Weight600,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: context.colors.whiteF5,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: context.colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: context.colors.blue,
                                      ),
                                    ),
                                    Gap(4),
                                    Text(
                                      "Количество",
                                      style: context.style.fontSize12Weight600,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: null, // context.colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: context.colors.red,
                                      ),
                                    ),
                                    Gap(4),

                                    Text(
                                      "Сумма",
                                      style: context.style.fontSize12Weight600,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(16),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: context.colors.gray100.withOpacity(0.5),
                        ),
                        color: context.colors.gray100.withOpacity(0.25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(context.icon.calendar),
                          Gap(8),
                          Text(
                            "01.10.2025 - 04.10.2025",
                            style: context.style.fontSize14Weight600,
                          ),
                        ],
                      ),
                    ),
Gap(8),
                    Container(
                      height: 138,
                      width: double.maxFinite,
                      decoration: BoxDecoration(),
                      child: LineChart(
                        LineChartData(
                          maxX: 6,
                          minY: 0,
                          maxY: 3,
                          gridData: FlGridData(
                            show: true,

                            horizontalInterval: 1,
                            verticalInterval: 1,
                          ),
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  const months = [
                                    'Jan',
                                    'Feb',
                                    'Mar',
                                    'Apr',
                                    'May',
                                    'Jun',
                                    'fgh',
                                  ];
                                  if (value.toInt() < months.length) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        months[value.toInt()],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                                interval: 1,
                              ),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                interval: 1,
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Text(
                                    value.toInt().toString(),
                                    style: context.style.fontSize12Weight400,
                                  );
                                },
                              ),
                            ),
                          ),

                          lineBarsData: [
                            LineChartBarData(
                              isCurved: true,
                              color: Colors.blue,
                              barWidth: 2,
                              dotData: FlDotData(show: true),
                              spots: const [
                                FlSpot(0, 2),
                                FlSpot(1, 1.8),
                                FlSpot(2, 1.9),
                                FlSpot(3, 2.4),
                                FlSpot(4, 3),
                                FlSpot(5, 2.8),
                                FlSpot(6, 2.8),
                                // FlSpot(6, ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(8),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: context.colors.red.withOpacity(0.08),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Отмененный заказ",
                                  style: context.style.fontSize14Weight600
                                      .copyWith(color: context.colors.red),
                                ),
                                Gap(4),
                                Text(
                                  "1",
                                  style: context.style.fontSize14Weight600
                                      .copyWith(color: context.colors.red),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(12),
                        Expanded(
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: context.colors.gray100,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Жалоба",
                                      style: context.style.fontSize14Weight600,
                                    ),
                                    Gap(4),
                                    Text(
                                      "1",
                                      style: context.style.fontSize14Weight600,
                                    ),
                                  ],
                                ),
                                SizedBox( 
                                  height: 20, 
                                  width: 20,
                                  child: SvgPicture.asset(context.icon.arrowCircleRight)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

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

