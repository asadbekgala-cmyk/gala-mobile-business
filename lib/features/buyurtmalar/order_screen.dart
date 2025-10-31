import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => OrderScreenState();
}

class OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text("Заказы", style: context.style.fontSize20Weight600),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Container(
            height: 48,
            decoration: BoxDecoration(color: context.colors.white),
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 36,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: index == 0 ? 16 : 8),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: context.colors.gray100,
                      border: Border.all(color: context.colors.gray200),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "В процессе",
                      style: context.style.fontSize14Weight600,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: context.colors.white,
                border: Border(
                  bottom: BorderSide(color: context.colors.gray100),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: TextField(
                        cursorColor: context.colors.black,

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          fillColor: context.colors.gray100,
                          filled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(context.icon.searchNormal),
                          ),
                          hintText: "Поиск страны",
                          hintStyle: context.style.fontSize14Weight500.copyWith(
                            color: context.colors.black300,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: context.colors.gray100,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: context.colors.gray100,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: context.colors.gray100,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                   ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  border: Border(
                    bottom: BorderSide(color: context.colors.gray100, width: 4),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: context.colors.red,
                          ),
                          child: Stack(
                            alignment: AlignmentGeometry.center,
                            children: [
                              Align(
                                alignment: AlignmentGeometry.bottomRight,
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: context.colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(8),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Заказ #123456",
                                style: context.style.fontSize14Weight600
                                    .copyWith(color: context.colors.gray700),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "3 350 000 сум",
                                style: context.style.fontSize16Weight600,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
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
                        Gap(8),
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
                        border: Border.all(color: context.colors.gray100),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "10 минут до принятия",
                                style: context.style.fontSize12Weight600,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 4.5,
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: context.colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(context.icon.clock),
                                    Gap(4),
                                    Text(
                                      "08:42",
                                      style: context.style.fontSize12Weight600
                                          .copyWith(
                                            color: context.colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(color: context.colors.gray100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Статус заказа",
                                style: context.style.fontSize12Weight600,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: context.colors.green,
                                  ),
                                  color: context.colors.green.withOpacity(0.08),
                                ),
                                child: Text(
                                  "Новый заказ",
                                  style: context.style.fontSize12Weight600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Gap(8),
                    Text(
                      "Добавки:",
                      style: context.style.fontSize12Weight600.copyWith(
                        color: context.colors.gray600,
                      ),
                    ),
                    Gap(4),
                    Text(
                      "Открытка/Бумага/Упаковка коробка",
                      style: context.style.fontSize12Weight600,
                    ),
                    Gap(8),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            height: 41,
                            color: context.colors.gray200,
                            child: Text(
                              "Немогу сделать",
                              style: context.style.fontSize12Weight600,
                            ),
                          ),
                        ),
                        Gap(8),
                        Expanded(
                          child: CustomButton(
                            onTap: () {
                              context.pushNamed(context.route.accseptOrder);
                            },
                            height: 41,
                            child: Text(
                              "Принять заказ",
                              style: context.style.fontSize12Weight600.copyWith(
                                color: context.colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(8),
                    CustomButton(
                      onTap: () {
                        context.pushNamed(context.route.moderation);
                      },
                      height: 41,
                      color: context.colors.blue,
                      child: Text(
                        "Отправить на модерации",
                        style: context.style.fontSize12Weight600.copyWith(
                          color: context.colors.white,
                        ),
                      ),
                    ),
                    Gap(8),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF0F0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: context.colors.red,
                                ),
                                child: SvgPicture.asset(context.icon.danger),
                              ),
                              Gap(8),
                              Text(
                                "Причина отказа",
                                style: context.style.fontSize16Weight700,
                              ),
                            ],
                          ),
                          Gap(8),
                          Text(
                            "Изображения цветов не совпадали",
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
    );
  }
}
