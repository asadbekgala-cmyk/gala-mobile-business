import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
                    context.pop();
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
                child: GestureDetector(
                  onTap: () {
                    context.pop();

                    context.pushNamed(context.route.createOddiy);
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
              ),
            ],
          ),
          Gap(16),
          CustomButton(
            margin: EdgeInsets.only(bottom: 16),
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
