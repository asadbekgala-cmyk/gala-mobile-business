import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/features/catalog/presentation/bloc/catalog_bloc.dart';
import 'package:gap/gap.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colors.white,
            border: Border(
              bottom: BorderSide(color: context.colors.gray100, width: 4),
            ),
          ),
          child: Row(
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 12.0),
              //   child: SvgPicture.asset(context.icon.checkbox),
              // ),
              if (state.isEdit)
                Container(
                  height: 24,
                  width: 24,
                  margin: EdgeInsets.symmetric(horizontal: 12),
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

              Expanded(
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
                        Flexible(
                          fit: FlexFit.loose,
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
              ),
            ],
          ),
        );
      },
    );
  }
}
