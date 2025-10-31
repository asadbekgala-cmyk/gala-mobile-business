import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/features/catalog/presentation/bloc/catalog_bloc.dart';
import 'package:gala_business/features/catalog/presentation/widgets/catalog_item.dart';
import 'package:gala_business/features/catalog/presentation/widgets/create_product_modal.dart';
import 'package:gala_business/features/catalog/presentation/widgets/filtr_modal.dart';
import 'package:gap/gap.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => CatalogScreenState();
}

class CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: context.colors.gray100,
          appBar: AppBar(
            backgroundColor: context.colors.white,
            title: Text("Каталог", style: context.style.fontSize20Weight600),
            centerTitle: true,
            actionsPadding: EdgeInsets.only(right: 16),
            actions: [
              if(!state.isEdit)
              SvgPicture.asset(context.icon.upFilled),
              Gap(4),
              GestureDetector(
                onTap: () {
                  context.read<CatalogBloc>().add(IsEditEvent());
                },
                child: Text(
                  state.isEdit?"Отменить": "Изметить",
                  style: context.style.fontSize12Weight600.copyWith(
                    color: context.colors.blue,
                  ),
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
                  margin: EdgeInsets.only(top: 8,),
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
                                child: SvgPicture.asset(
                                  context.icon.searchNormal,
                                ),
                              ),
                              hintText: "Поиск страны",
                              hintStyle: context.style.fontSize14Weight500
                                  .copyWith(color: context.colors.black300),
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
                          child: SvgPicture.asset(
                            context.icon.majesticonsFilter,
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
                  return CatalogItem();
                },
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
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
      },
    );
  }
}
