import 'package:flutter/material.dart';

import 'package:insighta/features/home/ui/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: HomeScreenBody(),
    ));
  }
}
