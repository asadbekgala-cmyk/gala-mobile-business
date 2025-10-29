import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text("Уведомления", style: context.style.fontSize20Weight600),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 16),
            child: SvgPicture.asset(context.icon.tick),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(44 + 12),
          child: Container(
            margin: const EdgeInsets.only(bottom: 12, right: 16, left: 16),
            decoration: BoxDecoration(
              color: context.colors.gray100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TabBar(
              onTap: (value) {},
              padding: const EdgeInsets.all(4),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: context.style.fontSize12Weight400,
              labelColor: context.colors.black,
              labelPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              unselectedLabelColor: context.colors.gray600,
              unselectedLabelStyle: context.style.fontSize12Weight400,
              indicatorColor: context.colors.white,
              controller: controller,
              dividerColor: Colors.transparent,
              // labelPadding: EdgeInsets.symmetric(horizontal: 30),
              indicator: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(9),
              ),
              tabs: [Text("Все"), Text("О заказах"), Text(" От Gala")],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          ListView.builder(
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
          ),
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }
}
