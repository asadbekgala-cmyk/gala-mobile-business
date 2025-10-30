import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gala_business/features/katalog/presentation/widgets/filtr_modal.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => CatalogScreenState();
}

class CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text("Каталог", style: context.style.fontSize20Weight600),
        centerTitle: true,
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [
          SvgPicture.asset(context.icon.upFilled),
          Gap(4),
          Text(
            "Изметить",
            style: context.style.fontSize12Weight600.copyWith(
              color: context.colors.blue,
            ),
          ),
        ],
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
                      "Экспресс (4)",
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

                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        useRootNavigator: true,
                        builder: (context) {
                          return FiltrModal();
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: context.colors.gray100,
                      ),
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset(context.icon.majesticonsFilter),
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
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
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
                          width: MediaQuery.sizeOf(context).width * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MonoLove 100 шт букет из розы",
                                style: context.style.fontSize14Weight600
                                    .copyWith(color: context.colors.gray700),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3 350 000 сум",
                                    style: context.style.fontSize16Weight600,
                                  ),
                                  Gap(8),
                                  Text(
                                    "3 350 000 сум",
                                    style: context.style.fontSize12Weight600
                                        .copyWith(color: context.colors.red),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 3.5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: context.colors.yellow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "Осталось 30 дней",
                                      style: context.style.fontSize12Weight600,
                                    ),
                                  ),
                                  Gap(4),
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
                                      "5 шт",
                                      style: context.style.fontSize12Weight600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: context.colors.gray100,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(context.icon.edit),
                        ),
                      ],
                    ),
                    Gap(8),

                    Row(
                      children: [
                        Container(
                          height: 45,
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: context.colors.gray100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // alignment: Alignment.center,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Просмотр",
                                    style: context.style.fontSize11Weight600,
                                  ),
                                  Text(
                                    "33",
                                    style: context.style.fontSize14Weight600,
                                  ),
                                ],
                              ),
                              Gap(12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Покупки",
                                    style: context.style.fontSize11Weight600,
                                  ),
                                  Text(
                                    "33",
                                    style: context.style.fontSize14Weight600,
                                  ),
                                ],
                              ),
                              Gap(12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Клики",
                                    style: context.style.fontSize11Weight600,
                                  ),
                                  Text(
                                    "33",
                                    style: context.style.fontSize14Weight600,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Gap(8),
                        Expanded(
                          child: Container(
                            height: 45,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: context.colors.gray100,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Активность\nпродукт",
                                  style: context.style.fontSize12Weight600,
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
                                        child: CircularProgressIndicator(
                                          color: context.colors.black,
                                        ),
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
              );
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IntrinsicHeight(
        child: IntrinsicWidth(
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                useRootNavigator: true,
                builder: (context) {
                  return CreateProductModal();
                },
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(46),
                color: context.colors.black,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(context.icon.plus),
                  Gap(4),
                  Text(
                    "Добавить продукт",
                    style: context.style.fontSize14Weight600.copyWith(
                      color: context.colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CreateProductModal extends StatelessWidget {
  const CreateProductModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: context.colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: Text(
                  "Выберите, какой тип продукта вы добавляете",
                  style: context.style.fontSize16Weight600,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Gap(16),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(context.route.createExpress);
                  },
                  child: Container(
                    height: 141,
                    decoration: BoxDecoration(
                      color: context.colors.gray100.withOpacity(0.25),
                      border: Border.all(color: context.colors.gray100),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Gap(16),
                          Text(
                            "Express товара",
                            style: context.style.fontSize14Weight600,
                          ),
                          Gap(25),
                          SvgPicture.asset(context.icon.light),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Gap(13),
              Expanded(
                child: Container(
                  height: 141,
                  decoration: BoxDecoration(
                    color: context.colors.gray100.withOpacity(0.25),
                    border: Border.all(color: context.colors.gray100),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Gap(16),
                        Text(
                          "Обычного товара",
                          style: context.style.fontSize14Weight600,
                        ),
                        Gap(25),
                        SvgPicture.asset(context.icon.box),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap(16),
          CustomButton(
            onTap: () {
              context.pop();
            },
            color: context.colors.gray200,
            child: Text("Закрыт", style: context.style.fontSize16Weight600),
          ),
        ],
      ),
    );
  }
}
