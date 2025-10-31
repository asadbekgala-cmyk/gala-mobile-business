import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SelectContent extends StatelessWidget {
  const SelectContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints( 
        maxHeight: MediaQuery.sizeOf(context).height*0.9
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: context.colors.white,
      ),
      child: Scaffold(
        backgroundColor: context.colors.white,
        appBar: AppBar(
          backgroundColor: context.colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            "Добавить состав",
            style: context.style.fontSize20Weight600,
          ),
          centerTitle: true,
          actionsPadding: EdgeInsets.only(right: 16),
          actions: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: SvgPicture.asset(context.icon.x),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    hintText: "Поиск по состав",
                    hintStyle: context.style.fontSize14Weight500.copyWith(
                      color: context.colors.black300,
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
              ),
            ),
            SliverGap(16),
            SliverList.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Роза", style: context.style.fontSize16Weight600),
                      SvgPicture.asset(
                        index.isEven ? context.icon.checkbox : context.icon.add,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: context.colors.white,
          child: CustomButton(
            child: Text(
              "Сохранить",
              style: context.style.fontSize16Weight600.copyWith(
                color: context.colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
