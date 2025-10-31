import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SwapOrderProduct extends StatelessWidget {
  const SwapOrderProduct({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text("Немогу сделать", style: context.style.fontSize20Weight600),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: SvgPicture.asset(context.icon.x),
              ),
            ],
          ),
          Gap(18),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFFEEF2FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                SvgPicture.asset(context.icon.undov),
                Gap(10),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  child: Text(
                    "Укажите, какой продукт вы не можете сделать.",
                    style: context.style.fontSize14Weight600,
                  ),
                ),
              ],
            ),
          ),
          ...List.generate(3, (index) {
            return Padding(
              padding: EdgeInsets.only(top: index == 0 ? 16 : 8.0),
              child: Row(
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
                        style: context.style.fontSize14Weight600.copyWith(
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
                  index.isEven
                      ? Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              colors: [
                                Colors.white, // markaz ochroq
                                Color(0xFFD5D5D5), // chetlari qoraroq
                              ],
                              center: Alignment.center,
                              radius: 1.0, // gradient yoyilishi
                            ),
                          ),
                        )
                      : SvgPicture.asset(context.icon.checkbox),
                  // Gap(8),
                ],
              ),
            );
          }),
          CustomButton(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return OfferProductModal();
                },
              );
            },
            margin: EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              "Нет, я не могу этого сделать.",
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

class OfferProductModal extends StatelessWidget {
  const OfferProductModal({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Icon(Icons.arrow_back),
              ),
              Column(
                children: [
                  Text("MonoLove", style: context.style.fontSize20Weight600),
                  Text(
                    "1 120 000 сум",
                    style: context.style.fontSize12Weight600,
                  ),
                ],
              ),
              SizedBox(),
            ],
          ),
          Gap(16),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFFEEF2FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                SvgPicture.asset(context.icon.undov),
                Gap(10),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  child: Text(
                    "Предложите, аналогичный (альтернативный) продукт",
                    style: context.style.fontSize14Weight600,
                  ),
                ),
              ],
            ),
          ),
          ...List.generate(3, (index) {
            return Padding(
              padding: EdgeInsets.only(top: index == 0 ? 16 : 8.0),
              child: Row(
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
                        style: context.style.fontSize14Weight600.copyWith(
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
                  index.isEven
                      ? Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              colors: [
                                Colors.white, // markaz ochroq
                                Color(0xFFD5D5D5), // chetlari qoraroq
                              ],
                              center: Alignment.center,
                              radius: 1.0, // gradient yoyilishi
                            ),
                          ),
                        )
                      : SvgPicture.asset(context.icon.checkbox),
                  // Gap(8),
                ],
              ),
            );
          }),
          CustomButton(
            margin: EdgeInsets.only(top: 16, bottom: 10),
            child: Text(
              "Предложение продукта",
              style: context.style.fontSize16Weight600.copyWith(
                color: context.colors.white,
              ),
            ),
          ),
          CustomButton(
            margin: EdgeInsets.only(bottom: 10),
            color: context.colors.gray100,

            child: Text(
              "Нет, я не могу этого сделать.",
              style: context.style.fontSize16Weight600,
            ),
          ),
        ],
      ),
    );
  }
}
