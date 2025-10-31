import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gala_business/features/buyurtmalar/presentation/widget/swap_order_product_modal.dart';
import 'package:gap/gap.dart';

class AccseptOrderScreen extends StatefulWidget {
  const AccseptOrderScreen({super.key});

  @override
  State<AccseptOrderScreen> createState() => _AccseptOrderScreenState();
}

class _AccseptOrderScreenState extends State<AccseptOrderScreen> {
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
                    itemCount: 5,
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

                          title: 
                          Row(
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
            Gap(30),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: context.colors.white,
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return SwapOrderProduct();
                    },
                  );
                },
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
                  // context.pushNamed(context.route.accseptOrder);
                },

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
      ),
    );
  }
}
