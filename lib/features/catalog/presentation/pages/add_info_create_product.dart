import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gala_business/features/catalog/presentation/widgets/add_photo.dart';
import 'package:gala_business/features/catalog/presentation/widgets/additional_info.dart';
import 'package:gala_business/features/catalog/presentation/widgets/quantity_info.dart';
import 'package:gala_business/features/catalog/presentation/widgets/select_content.dart';
import 'package:gap/gap.dart';

class AddInfoCreateProduct extends StatefulWidget {
  const AddInfoCreateProduct({super.key});

  @override
  State<AddInfoCreateProduct> createState() => _AddInfoCreateProductState();
}

class _AddInfoCreateProductState extends State<AddInfoCreateProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text("Category Name", style: context.style.fontSize20Weight600),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddPhotoWidget(),

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
                ],
              ),
            ),

            QuantitiyInfo(),

            AdditionalInfo(),

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
                  Text("Состав", style: context.style.fontSize16Weight700),
                  Gap(8),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return SelectContent();
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFFE9ECEF),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xFFF8F9FA)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(context.icon.add),
                          Gap(10),
                          Text(
                            "Добавить состав",
                            style: context.style.fontSize14Weight600.copyWith(
                              color: context.colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                  Text("Хэштеги", style: context.style.fontSize16Weight700),
                  Gap(8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      ...List.generate(10, (index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: context.colors.gray100,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: context.colors.gray200),
                          ),
                          child: Text("data $index"),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            Gap(8),
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
