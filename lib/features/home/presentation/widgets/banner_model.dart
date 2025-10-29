
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/custom_button.dart';
import 'package:gap/gap.dart';

class BannerModal extends StatefulWidget {
  const BannerModal({super.key});

  @override
  State<BannerModal> createState() => _BannerModalState();
}

class _BannerModalState extends State<BannerModal> {
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
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Баннеры с новостями",
            style: context.style.fontSize20Weight600,
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SvgPicture.asset(context.icon.x),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Container(
                  height: 181,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: context.colors.red,
                  ),
                ),
                Text("8 Марта", style: context.style.fontSize20Weight600),
                Gap(4),
                Text(
                  "Gala – это современное и удобное приложение для заказа и доставки цветов, шоколадов, сладостей и различных подарков. Мы сотрудничаем с лучшими магазинами города, чтобы вы могли радовать своих близких в любой день, будь то день рождения, годовщина, свидание или просто приятный сюрприз без повода. В приложении вы найдете большой выбор свежих букетов, красивых цветочных композиций",
                  style: context.style.fontSize14Weight500,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar( 
          color: context.colors.whiteF5,
          child: CustomButton( 
            height: 54, 
            color: context.colors.gray200,
            child: Text("Понятно", style: context.style.fontSize16Weight600,),
          ),
        ),
      ),
    );
  }
}
