import 'package:flutter/material.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';

class QuantitiyInfo extends StatelessWidget {
  const QuantitiyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
    );
  }
}
