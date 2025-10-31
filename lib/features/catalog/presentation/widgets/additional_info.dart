
import 'package:flutter/material.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({
    super.key,
  });

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
    );
  }
}
