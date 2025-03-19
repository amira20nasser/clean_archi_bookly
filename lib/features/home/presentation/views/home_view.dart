import 'package:flutter/material.dart';
import '../../../../core/common_widgets/adaptive_layout_widget.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/mobile_home_view_body.dart';
import 'widgets/tablet_home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: AdaptiveLayoutWidget(
        tabletLayout: (context) => const TabletHomeViewBody(),
        desktopLayout: (context) =>const TabletHomeViewBody(),
        mobileLayout: (context) =>const MobileHomeViewBody(),
      ),
    );
  }
}
