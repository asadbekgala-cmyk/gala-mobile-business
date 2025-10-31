import 'package:flutter/material.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class FiltrModal extends StatelessWidget {
  const FiltrModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Text("Фильтр", style: context.style.fontSize20Weight600),
              ),
            ],
          ),
          ...List.generate(4, (index) {
            return Container(
              margin: EdgeInsets.only(bottom: 12),

              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.colors.gray100.withOpacity(0.25),
                border: Border.all(color: context.colors.gray100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Сначала дорогие",
                    style: context.style.fontSize14Weight600,
                  ),
                  Container(
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
                  ),
                ],
              ),
            );
          }),
          CustomButton(
            height: 54,
            onTap: () {
              context.pop();
            },
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              "Показать результат",
              style: context.style.fontSize16Weight600.copyWith(color: context.colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
