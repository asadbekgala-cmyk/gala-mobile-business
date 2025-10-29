import 'package:flutter/material.dart';

class CustomSlideButton extends StatefulWidget {
  final double height;
  final double width;
  final VoidCallback onSubmit;

  const CustomSlideButton({
    super.key,
    required this.height,
    required this.width,
    required this.onSubmit,
  });

  @override
  State<CustomSlideButton> createState() => _CustomSlideButtonState();
}

class _CustomSlideButtonState extends State<CustomSlideButton> {
  double position = 0; // 0.0 → start, 1.0 → end
  bool submitted = false;

  @override
  Widget build(BuildContext context) {
    final sliderWidth = widget.height; // tugma kvadrat bo‘lsin
    final trackWidth = widget.width;

    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          position += details.primaryDelta! / (trackWidth - sliderWidth);
          position = position.clamp(0.0, 1.0);
        });
      },
      onHorizontalDragEnd: (_) {
        if (position > 0.95) {
          setState(() => submitted = true);
          widget.onSubmit();
        } else {
          // qaytib boshiga qaytadi
          setState(() => position = 0);
        }
      },
      child: Stack(
        children: [
          // Track (background)
          Container(
            width: trackWidth,
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(40),
            ),
          ),

          // Filled part (qora rang)
          Container(
            width: (trackWidth - sliderWidth) * position + sliderWidth,
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40),
            ),
          ),

          // Slider button
          Positioned(
            left: (trackWidth - sliderWidth) * position,
            child: Container(
              width: sliderWidth,
              height: widget.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Icon(Icons.arrow_forward, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
