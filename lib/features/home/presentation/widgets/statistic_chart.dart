import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';

class StatisticWidget extends StatelessWidget {
  const StatisticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Text("Продажи", style: context.style.fontSize16Weight700),
                  Text("3 шт", style: context.style.fontSize14Weight600),
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
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                        style: context.style.fontSize14Weight600.copyWith(
                          color: context.colors.red,
                        ),
                      ),
                      Gap(4),
                      Text(
                        "1",
                        style: context.style.fontSize14Weight600.copyWith(
                          color: context.colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(12),
              Expanded(
                child: Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: context.colors.gray100,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Жалоба",
                            style: context.style.fontSize14Weight600,
                          ),
                          Gap(4),
                          Text("1", style: context.style.fontSize14Weight600),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(context.icon.arrowCircleRight),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
