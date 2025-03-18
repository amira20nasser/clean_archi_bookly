import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';

class AnimatedLogoImage extends StatefulWidget {
  const AnimatedLogoImage({super.key});

  @override
  State<AnimatedLogoImage> createState() => _AnimatedLogoImageState();
}

class _AnimatedLogoImageState extends State<AnimatedLogoImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(begin: const Offset(-10, 0), end: const Offset(0, 0))
        .animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return SlideTransition(
            // opacity: _animation.value,
            position: _animation,
            child: Image.asset(
              Assets.imagesLogo,
              height: 20,
            ),
          );
        },
      ),
    );
  }
}
