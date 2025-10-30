import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';

class CreateExpressScreen extends StatefulWidget {
  const CreateExpressScreen({super.key});

  @override
  State<CreateExpressScreen> createState() => _CreateExpressScreenState();
}

class _CreateExpressScreenState extends State<CreateExpressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        title: Text("Express товара", style: context.style.fontSize20Weight600),
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
                    style: context.style.fontSize12Weight600,
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
                children: [ 
                ],
              )
       )
          ],
        ),
      ),
    );
  }
}
