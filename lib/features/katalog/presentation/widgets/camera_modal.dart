import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CameraModal extends StatelessWidget {
  const CameraModal({super.key});

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
              Column(
                children: [
                  Text(
                    "Загрузите изображение продукта",
                    style: context.style.fontSize16Weight700,
                  ),
                  Text(
                    "Формат: JPG или PNG, ограничение 5 МБ",
                    style: context.style.fontSize12Weight600,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: SvgPicture.asset(context.icon.x),
              ),
            ],
          ),
          Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 176,
                width: 176,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFF8F9FA),
                  border: Border.all(color: context.colors.gray100),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1200x1200px",
                        style: context.style.fontSize12Weight600,
                      ),
                      SvgPicture.asset(context.icon.photoPrints),
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
                                        style:
                                            context.style.fontSize12Weight600,
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
       Gap(16), 
       Row( 
        children: [ 
          Expanded(
            child: Container( 
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(16), 
                color: context.colors.gray100,
              ),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  SvgPicture.asset(context.icon.solarGalleryBold), 
                  Gap(8), 
                  Text("Галерея", style: context.style.fontSize14Weight600,),
                ],
              ),
            ),
          ),
          Gap(8),
           Expanded(
             child: Container( 
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(16), 
                color: context.colors.gray100,
              ),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,

                children: [ 
                  SvgPicture.asset(context.icon.famiconsCamera), 
                  Gap(8), 
                  Text("Галерея", style: context.style.fontSize14Weight600,),
                ],
              ),
                       ),
           ),
        ],
       )
       
        ],
      ),
    );
  }
}
