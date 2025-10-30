import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gala_business/features/katalog/presentation/widgets/camera_modal.dart';
import 'package:gala_business/features/katalog/presentation/widgets/select_content.dart';
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
                    style: context.style.fontSize12Weight600.copyWith(
                      color: context.colors.gray600,
                    ),
                  ),
                  Gap(8),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
isScrollControlled: true,
                              builder: (context) {
                                return CameraModal();
                              },
                            );
                          },
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
                                        style:
                                            context.style.fontSize12Weight600,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                      padding: EdgeInsets.only(right: 7),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: context.colors.black,
                                        ),
                                      ),
                                      child: Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                          // shape: BoxShape.circle,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                          ),
                                          color: context.colors.black,
                                        ),
                                      ),
                                    ),

                                    Gap(4),
                                    Text(
                                      "Левая сторона",
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
                                      padding: EdgeInsets.only(left: 7),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: context.colors.black,
                                        ),
                                      ),
                                      child: Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                          // shape: BoxShape.circle,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          ),
                                          color: context.colors.black,
                                        ),
                                      ),
                                    ),
                                    Gap(4),
                                    Text(
                                      "Правая сторона",
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
                  Text("Количество", style: context.style.fontSize16Weight700),
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

                            hintText: "Время приготовления",
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
                      Container(
                        height: 46,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: context.colors.gray100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: context.colors.black,
                              ),
                              child: Text(
                                "Min",
                                style: context.style.fontSize14Weight500,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: context.colors.gray100,
                              ),
                              child: Text(
                                "Min",
                                style: context.style.fontSize14Weight500,
                              ),
                            ),
                          ],
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
                      suffixText: "sggf",
                      suffixStyle: context.style.fontSize14Weight500,
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
                  SizedBox(
                    height: 36,
                    child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: index == 0 ? 0 : 8),
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: context.colors.gray100,
                            border: Border.all(color: context.colors.gray200),
                          ),
                          child: Text(
                            "1 день",
                            style: context.style.fontSize14Weight600,
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
                    "Доп. информация",
                    style: context.style.fontSize16Weight700,
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
                            hintText: "Ширина",
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
                            hintText: "Высота",
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
                      Container(
                        height: 46,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: context.colors.gray100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: context.colors.black,
                              ),
                              child: Text(
                                "Min",
                                style: context.style.fontSize14Weight500,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: context.colors.gray100,
                              ),
                              child: Text(
                                "metr",
                                style: context.style.fontSize14Weight500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Gap(8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.5,
                      // horizontal: 8,
                    ),
                    height: 56,
                    decoration: BoxDecoration(
                      color: context.colors.gray100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 35,
                                child: TextField(
                                  scrollPadding: EdgeInsets.zero,
                                  // controller: emailController,
                                  // keyboardType: TextInputType.phone,
                                  style: context.style.fontSize14Weight600,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: context.colors.gray100,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: context.colors.gray100,
                                      ),
                                    ),
                                    enabled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: context.colors.gray100,
                                      ),
                                    ),
                                    labelText: "ИКПУ",
                                    labelStyle: context
                                        .style
                                        .fontSize12Weight600
                                        .copyWith(
                                          color: context.colors.gray600,
                                        ),
                                    isDense: true,
                                    border: InputBorder.none,
                                    hintStyle: context.style.fontSize16Weight600
                                        .copyWith(
                                          color: context.colors.gray600,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.5,
                      // horizontal: 8,
                    ),
                    height: 56,
                    decoration: BoxDecoration(
                      color: context.colors.gray100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 35,
                                child: TextField(
                                  scrollPadding: EdgeInsets.zero,
                                  // controller: emailController,
                                  // keyboardType: TextInputType.phone,
                                  style: context.style.fontSize14Weight600,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: context.colors.gray100,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: context.colors.gray100,
                                      ),
                                    ),
                                    enabled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: context.colors.gray100,
                                      ),
                                    ),
                                    labelText: "Код упаковки",
                                    labelStyle: context
                                        .style
                                        .fontSize12Weight600
                                        .copyWith(
                                          color: context.colors.gray600,
                                        ),
                                    isDense: true,
                                    border: InputBorder.none,
                                    hintStyle: context.style.fontSize16Weight600
                                        .copyWith(
                                          color: context.colors.gray600,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(8),

                  TextField(
                    cursorColor: context.colors.black,
                    minLines: 4,
                    maxLines: 4,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      fillColor: context.colors.gray100,
                      filled: true,

                      hintText: "Описание",
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


