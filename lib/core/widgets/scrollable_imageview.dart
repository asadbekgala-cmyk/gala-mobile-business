import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gala_business/core/extension/extension.dart';
import 'package:gala_business/core/widgets/image_preloader.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:video_player/video_player.dart';

import '../config/app_constants.dart';

class ScrollableImageview extends StatefulWidget {
  final List<String> imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;
  final bool isSmoothIndicator;
  final BorderRadius? borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;
  final Color borderColor;
  final double borderWidth;
  final bool? volumeOn;
  final Function()? onTap;
  final Clip? clipBehavior;
  final bool srolable;
  final bool bottomIndigator;
  final PageController? pageController;
  final EdgeInsetsDirectional? isSmoothIndicatorPadding;

  const ScrollableImageview({
    super.key,
    this.imageUrl = const [],
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.color,
    this.isSmoothIndicator = false,
    this.borderRadius,
    this.placeholder,
    this.errorWidget,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.volumeOn,
    this.onTap,
    this.clipBehavior,
    required this.srolable,
    this.bottomIndigator = false,
    this.pageController,
    this.isSmoothIndicatorPadding,
  });

  @override
  State<ScrollableImageview> createState() => _ScrollableImageviewState();
}

class _ScrollableImageviewState extends State<ScrollableImageview>
    with AutomaticKeepAliveClientMixin, WidgetsBindingObserver {
  late PageController controller;
  VideoPlayerController? _videoController;
  bool _isVideo = false;
  @override
  void didUpdateWidget(covariant ScrollableImageview oldWidget) {
    super.didUpdateWidget(oldWidget);

    // 🆕 ✅ Eski va yangi video URL ni solishtiramiz
    final newVideoUrl = widget.imageUrl.firstWhere(
      (e) => e.toLowerCase().endsWith('.mp4'),
      orElse: () => '',
    );

    final oldVideoUrl = oldWidget.imageUrl.firstWhere(
      (e) => e.toLowerCase().endsWith('.mp4'),
      orElse: () => '',
    );

    if (newVideoUrl != oldVideoUrl) {
      // 🆕 ✅ URL o‘zgargan bo‘lsa eski controller tozalanadi va yangisi yaratiladi
      _videoController?.pause();
      _videoController?.dispose();
      _videoController = null;
      _isVideo = false;
      _checkForVideo();
    } else if (_isVideo &&
        _videoController != null &&
        _videoController!.value.isInitialized &&
        !_videoController!.value.isPlaying) {
      // 🆕 ✅ Sahifaga qaytganda avtomatik davom ettiradi
      // _videoController!.play();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = widget.pageController ?? PageController();
    _checkForVideo();
  }

  void _checkForVideo() {
    final videoUrl = widget.imageUrl.firstWhere(
      (e) => e.toLowerCase().endsWith('.mp4'),
      orElse: () => '',
    );

    // 🆕 ✅ Endi faqat _videoController == null bo‘lsa yaratiladi
    if (videoUrl.isNotEmpty && _videoController == null) {
      _isVideo = true;

      _videoController =
          VideoPlayerController.networkUrl(
              Uri.parse("${AppConstants.baseUrl}/$videoUrl"),
              videoPlayerOptions: VideoPlayerOptions(
                mixWithOthers: true,
              ), // 🆕 ixtiyoriy, lekin yaxshi amaliyot
            )
            ..initialize().then((_) {
              if (!mounted) return; // 🆕 xavfsiz setState
              _videoController!
                ..setLooping(true)
                ..setVolume(widget.volumeOn == true ? 1 : 0);
                // ..play();
              setState(() {});
            });
    }
  }

  @override
  void dispose() {
    // 🆕 ✅ Avval pauza qilib keyin dispose qilamiz
    _videoController?.pause();
    _videoController?.dispose();
    _videoController = null; // 🆕 tozalash

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final height = widget.height ?? MediaQuery.sizeOf(context).height * 0.41;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              clipBehavior: widget.clipBehavior ?? Clip.hardEdge,
              height: height,
              decoration: BoxDecoration(
                border: Border.all(
                  color: widget.borderColor,
                  width: widget.borderWidth,
                ),
                borderRadius: widget.borderRadius ?? BorderRadius.circular(16),
              ),
              child: _isVideo
                  ? _buildVideo()
                  : _buildImageCarousel(), // 🎥 yoki 🖼️
            ),
          ),
        ),

        // 🔘 pastdagi indikator (faqat rasm bo‘lsa kerak)
        if (!_isVideo &&
            widget.imageUrl.length > 1 &&
            widget.srolable &&
            widget.bottomIndigator &&
            widget.isSmoothIndicator)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              controller: controller,
              count: widget.imageUrl.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotHeight: 5,
                dotWidth: 5,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildVideo() {
    if (_videoController == null || !_videoController!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return SizedBox(
      width: double.infinity, // 📌 eni to‘liq
      child: AspectRatio(
        aspectRatio: _videoController!.value.aspectRatio, // nisbatni saqlaydi
        child: VideoPlayer(_videoController!),
      ),
    );
  }

  Widget _buildImageCarousel() {
    return Stack(
      children: [
        PageView.builder(
          physics: !widget.srolable
              ? const NeverScrollableScrollPhysics()
              : null,
          controller: controller,
          itemCount: widget.imageUrl.length,
          itemBuilder: (context, index) {
            final url = widget.imageUrl[index];
            return ClipRRect(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(16),
              clipBehavior: widget.clipBehavior ?? Clip.hardEdge,
              child: url.toLowerCase().endsWith('.svg')
                  ? SvgPicture.network(
                      "${AppConstants.baseUrl}/$url",
                      placeholderBuilder: (context) =>
                          widget.placeholder ?? const ImagePreloadShimmer(),
                      errorBuilder: (_, __, ___) =>
                          widget.errorWidget ??
                          const Icon(Icons.error_outline_rounded),
                    )
                  : CachedNetworkImage(
                      imageUrl: "${AppConstants.baseUrl}/$url",
                      width: double.infinity,
                      height: widget.height,
                      color: widget.color,
                      fit: widget.fit,
                      placeholder: (context, _) =>
                          widget.placeholder ?? const ImagePreloadShimmer(),
                      errorWidget: (_, __, ___) =>
                          widget.errorWidget ??
                          const Icon(Icons.error_outline_rounded),
                    ),
            );
          },
        ),

        // 🔘 yuqoridagi indikator
        if (widget.imageUrl.length > 1 &&
            widget.srolable &&
            !widget.bottomIndigator &&
            widget.isSmoothIndicator)
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: widget.isSmoothIndicatorPadding,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFD9DADD),
                borderRadius: BorderRadius.circular(30),
              ),
              child: SmoothPageIndicator(
                controller: controller,
                count: widget.imageUrl.length,
                effect: SlideEffect(
                  spacing: 4,
                  dotColor: context.colors.white,
                  activeDotColor: context.colors.black,
                  dotHeight: 4,
                  dotWidth: 4,
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
