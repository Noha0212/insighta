import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:insighta/core/utils/styles.dart';

import 'package:insighta/features/home/ui/widgets/scatter_chart_widget.dart';
import 'package:insighta/features/home/ui/widgets/home_grid_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 26.h,
          ),
          Text(
            'Discover',
            style: Styles.textStyle30I,
          ),
          SizedBox(
            height: 22.h,
          ),
     
          SizedBox(height: 28.h),
          Expanded(child: HomeGridView()),
          SizedBox(height: 8.h),
          Text(
            'Last Week',
            style: Styles.textStyle22I,
          ),
          SizedBox(
            height: 18.h,
          ),
          ScatterChartWidget(),
          SizedBox(
            height: 22.h,
          ),
        ],
      ),
    );
  }
}
