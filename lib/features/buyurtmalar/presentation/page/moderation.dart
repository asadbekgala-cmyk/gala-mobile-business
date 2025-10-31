import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gala_business/features/buyurtmalar/presentation/widget/datail_order_widget.dart';
import 'package:gap/gap.dart';

class ModerationScreen extends StatefulWidget {
  const ModerationScreen({super.key});

  @override
  State<ModerationScreen> createState() => _ModerationScreenState();
}

class _ModerationScreenState extends State<ModerationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text(
          "Заказы #1234567890",
          style: context.style.fontSize20Weight600,
        ),
        centerTitle: true,
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [SvgPicture.asset(context.icon.messages)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: (MediaQuery.sizeOf(context).width - 45) / 2,
                          decoration: BoxDecoration(
                            border: Border.all(color: context.colors.gray100),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Stack(
                            alignment: AlignmentGeometry.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(context.icon.addImage),
                                  Text(
                                    "Загрузить изб.",
                                    style: context.style.fontSize12Weight600
                                        .copyWith(color: context.colors.blue),
                                  ),
                                  Gap(30),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF575766),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Text(
                                      "Продукт",
                                      style: context.style.fontSize12Weight600
                                          .copyWith(
                                            color: context.colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(13),
                      Expanded(
                        child: Container(
                          height: (MediaQuery.sizeOf(context).width - 45) / 2,
                          decoration: BoxDecoration(
                            border: Border.all(color: context.colors.gray100),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Stack(
                            alignment: AlignmentGeometry.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(context.icon.addImage),
                                  Text(
                                    "Загрузить изб.",
                                    style: context.style.fontSize12Weight600
                                        .copyWith(color: context.colors.blue),
                                  ),
                                  Gap(30),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF575766),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Text(
                                      "Готовый",
                                      style: context.style.fontSize12Weight600
                                          .copyWith(
                                            color: context.colors.white,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(12),
                  Text(
                    "После того как вы изготовите продукцию, своевременно отправьте фото готового изделия на модерацию.",
                    style: context.style.fontSize12Weight600,
                  ),
                ],
              ),
            ),
            DetailOrderWidget(),
           
            Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Подробности", style: context.style.fontSize16Weight700),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      border: Border.all(color: context.colors.gray100),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Тип оплаты",
                          style: context.style.fontSize14Weight600,
                        ),
                        Text("Payme", style: context.style.fontSize14Weight600),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      border: Border.all(color: context.colors.gray100),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Дата забирание",
                          style: context.style.fontSize14Weight600,
                        ),
                        Text(
                          "05.05.2025 10:10",
                          style: context.style.fontSize14Weight600,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      border: Border.all(color: context.colors.gray100),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Тип отправки",
                          style: context.style.fontSize14Weight600,
                        ),
                        Text(
                          "Gala доставка",
                          style: context.style.fontSize14Weight600,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      border: Border.all(color: context.colors.gray100),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "10 минут до принятия",
                          style: context.style.fontSize14Weight600,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
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
                                    .copyWith(color: context.colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      border: Border.all(color: context.colors.gray100),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Статус",
                          style: context.style.fontSize14Weight600,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: context.colors.green),
                            color: context.colors.green.withOpacity(0.08),
                          ),
                          child: Text(
                            "Новый заказ",
                            style: context.style.fontSize12Weight600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Добавки", style: context.style.fontSize16Weight700),
                  Gap(8),
                  Row(
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: context.colors.red,
                        ),
                      ),
                      Gap(12),
                      Text(
                        "Упаковка коробка",
                        style: context.style.fontSize14Weight600,
                      ),
                      Spacer(),
                      Text(
                        "+100 000 сум",
                        style: context.style.fontSize14Weight600,
                      ),
                    ],
                  ),
                  Gap(8),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: context.colors.white,
                      boxShadow: [
                        BoxShadow(color: context.colors.gray500, blurRadius: 4),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Открытка",
                          style: context.style.fontSize16Weight700.copyWith(
                            color: context.colors.green,
                          ),
                        ),
                        Text(
                          "Donec vitae mi vulputate, suscipit urna in, malesuada nisl. Pellentesque laoreet pretium nisl, et pulvinar massa eleifend sed. Curabitur maximus mollis diam,",
                          style: context.style.fontSize14Weight600,
                          maxLines: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: context.colors.white,
        child: CustomButton(
          onTap: () {
            // context.pushNamed(context.route.moderation);
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
      ),
    );
  }
}
