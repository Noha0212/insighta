import 'package:flutter/material.dart';
import 'package:insighta/features/report/ui/report_screen_body.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(),
      ),
      body: SafeArea(child: ReportScreenBody()),
    );
  }
}
