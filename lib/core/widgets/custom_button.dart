import 'package:flutter/material.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gap/gap.dart';

class CustomButton extends StatelessWidget {
  final bool loading;
  final double? height;
  final double? width;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final Clip clipBehavior;
  final BoxBorder? border;
  ///borderRadius default 20
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final BoxShape shape;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  const CustomButton({
    this.onTap,
    super.key,
    this.loading = false,
    this.height,
    this.width,
    this.alignment,
    this.child,
    this.clipBehavior = Clip.none,
    this.border,
    this.borderRadius,
    this.color,
    this.shape = BoxShape.rectangle,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: height?? 41,
        width: width ?? double.maxFinite,
        alignment: alignment ?? Alignment.center,
        clipBehavior: clipBehavior,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius ?? BorderRadius.circular(20),
          color: color ?? context.colors.black,
          shape: shape,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            child ?? const SizedBox(),
            Gap(loading ? 10 : 0),
            loading
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: const Color(0xFF434254),
                      strokeWidth: 2,
                      backgroundColor: context.colors.white,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
