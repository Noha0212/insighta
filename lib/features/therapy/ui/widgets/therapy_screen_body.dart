import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insighta/core/utils/styles.dart';
import 'package:insighta/features/therapy/ui/widgets/therapy_list_view.dart';

class TherapyScreenBody extends StatelessWidget {
  const TherapyScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/therapy.png'),
          SizedBox(
            height: 12,
          ),
          Expanded(child: TherapyListView()),
        ],
      ),
    );
  }
}
