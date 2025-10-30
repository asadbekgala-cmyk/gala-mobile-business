import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text(
          "Обычного товара",
          style: context.style.fontSize20Weight600,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: context.colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Новый продукт", style: context.style.fontSize16Weight700),
              Text(
                "Выберите тип продукта для добавления.",
                style: context.style.fontSize12Weight600.copyWith(
                  color: context.colors.gray600,
                ),
              ),
              Gap(12),
              GestureDetector(
                onTap: () {
                  context.pushNamed(context.route.addInfoCreateProduct);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colors.gray100),
                    color: Color(0xFFF8F9FA),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(color: context.colors.red),
                      ),
                      Gap(8),
                      Text(
                        "Gala flowers",
                        style: context.style.fontSize14Weight600,
                      ),
                      Spacer(),
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: SvgPicture.asset(context.icon.arrowCircleRight),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(8),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 12,
                  childAspectRatio: 174 / 60,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return LockCategoryModal();
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: context.colors.gray100),
                        color: Color(0xFFF8F9FA),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: context.colors.red,
                            ),
                          ),
                          Gap(8),
                          SizedBox(
                            width: 60,
                            child: Text(
                              "Gala flowersaddImage",
                              style: context.style.fontSize14Weight600,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            height: 16,
                            width: 16,
                            child: SvgPicture.asset(context.icon.lock),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LockCategoryModal extends StatelessWidget {
  const LockCategoryModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.4,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: context.colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(),
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colors.red,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(context.icon.danger),
              ),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: SvgPicture.asset(context.icon.x),
              ),
            ],
          ),
          Gap(8),
          Text(
            "Раздел неактивен для вашего магазина, свяжитесь с нами для активации раздела.",
            style: context.style.fontSize16Weight600,
            textAlign: TextAlign.center,
          ),
          Gap(16),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: context.colors.gray100),
              color: Color(0xFFF8F9FA),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(color: context.colors.red),
                ),
                Gap(8),
                Text(
                  "Gala flowersaddImage",
                  style: context.style.fontSize14Weight600,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                SizedBox(
                  height: 16,
                  width: 16,
                  child: SvgPicture.asset(context.icon.lock),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            child: Text(
              "Связаться с нами",
              style: context.style.fontSize16Weight600.copyWith(
                color: context.colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
