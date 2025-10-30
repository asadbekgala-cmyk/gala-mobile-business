import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';

class CreateExpressScreen extends StatefulWidget {
  const CreateExpressScreen({super.key});

  @override
  State<CreateExpressScreen> createState() => _CreateExpressScreenState();
}

class _CreateExpressScreenState extends State<CreateExpressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text("Express товара", style: context.style.fontSize20Weight600),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.all(16),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Загрузите изображение продукта",
                    style: context.style.fontSize16Weight700,
                  ),
                  Text(
                    "Формат: JPG или PNG, ограничение 5 МБ",
                    style: context.style.fontSize12Weight600,
                  ),
                  Gap(8),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(12),
                          height: (MediaQuery.sizeOf(context).width - 44) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFFF8F9FA),
                          ),
                          child: Column(
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
                                padding: EdgeInsets.symmetric(
                                  // horizontal: 44,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: context.colors.gray100,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 16,
                                      width: 16,
                                      padding: EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: context.colors.black,
                                        ),
                                      ),
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: context.colors.black,
                                        ),
                                      ),
                                    ),
                                    Gap(4),
                                    Text(
                                      "Ближе",
                                      style: context.style.fontSize12Weight600,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(12),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(12),

                          height: (MediaQuery.sizeOf(context).width - 44) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFFF8F9FA),
                          ),
                          child: Column(
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
                                padding: EdgeInsets.symmetric(
                                  // horizontal: 44,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: context.colors.gray100,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Container(
                                      height: 16,
                                      width: 16,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: context.colors.black,
                                        ),
                                      ),
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: context.colors.black,
                                        ),
                                      ),
                                    ),
                                    Gap(4),
                                    Text(
                                      "Далеко",
                                      style: context.style.fontSize12Weight600,
                                    ),
                                  ],
                                ),
                              ),
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
              padding: EdgeInsets.all(16),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Основная информация",
                    style: context.style.fontSize16Weight700,
                  ),
                  Gap(8),
                  TextField(
                    cursorColor: context.colors.black,

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      fillColor: context.colors.gray100,
                      filled: true,

                      hintText: "Наименование товара",
                      hintStyle: context.style.fontSize14Weight500.copyWith(
                        color: context.colors.gray600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: context.colors.gray100),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: context.colors.gray100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: context.colors.gray100),
                      ),
                    ),
                  ),
                  Gap(8),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: context.colors.black,

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            fillColor: context.colors.gray100,
                            filled: true,

                            hintText: "Цена",
                            hintStyle: context.style.fontSize14Weight500
                                .copyWith(color: context.colors.gray600),
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
                      Gap(8),
                      Expanded(
                        child: TextField(
                          cursorColor: context.colors.black,

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            fillColor: context.colors.gray100,
                            filled: true,

                            hintText: "Цена со скидкой",
                            hintStyle: context.style.fontSize14Weight500
                                .copyWith(color: context.colors.gray600),
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
                    ],
                  ),
                  Gap(8),
                  TextField(
                    cursorColor: context.colors.black,

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      fillColor: context.colors.gray100,
                      filled: true,

                      hintText: "Количество готовых товаров",
                      hintStyle: context.style.fontSize14Weight500.copyWith(
                        color: context.colors.gray600,
                      ),
                      suffixText: "Шт",
                      suffixStyle: context.style.fontSize14Weight500,
                      // suffixIcon: Padding(
                      //   padding: const EdgeInsets.all(16.0),
                      //   child: Text("ta"),
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: context.colors.gray100),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: context.colors.gray100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: context.colors.gray100),
                      ),
                    ),
                  ),
                  Gap(8),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFE9ECEF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Продвигать",
                          style: context.style.fontSize14Weight600,
                        ),

                        Container(
                          height: 24,
                          width: 40,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: context.colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: context.colors.white,
                                ),
                                // child: CircularProgressIndicator(
                                //   color: context.colors.black,
                                // ),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: context.colors.white,
        child: CustomButton(
          child: Text(
            "Добавить",
            style: context.style.fontSize16Weight600.copyWith(
              color: context.colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
