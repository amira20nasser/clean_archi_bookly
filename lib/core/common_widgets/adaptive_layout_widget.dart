import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
//to solve of create object before it rendering and BlocProvider
// typeof WidgetBuilder = Widget Function(BuildContext)
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        // log(constrains.maxWidth.toString());
        if (constrains.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < 1300) {
          return tabletLayout(context);
        }
        return desktopLayout(context);
      },
    );
  }
}
