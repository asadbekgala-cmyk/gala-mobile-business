import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/features/home/presentation/widgets/all_notifications.dart';

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
        children: [AllNotifications(), Text("data"), Text("data")],
      ),
    );
  }
}
