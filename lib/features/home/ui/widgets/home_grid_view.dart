import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insighta/core/theming/colors.dart';
import 'package:insighta/core/utils/styles.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});
  static const List<Map<String, dynamic>> buttonData = [
    {'icon': FontAwesomeIcons.solidHeart, 'label': 'Suggest'},
    {'icon': Icons.chat, 'label': 'Rebort'},
    {'icon': FontAwesomeIcons.chartColumn, 'label': 'Usage'},
    {'icon': FontAwesomeIcons.userGroup, 'label': 'Parent'},
    {'icon': FontAwesomeIcons.userDoctor, 'label': 'Thearpy'},
    {'icon': FontAwesomeIcons.commentDots, 'label': 'Contact Us'},
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10.h,
      crossAxisSpacing: 10.w,
      childAspectRatio: 2,
      children: buttonData.map((data) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManager.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                data['icon'],
                color: Colors.white,
                size: 24.r,
              ),
              SizedBox(height: 5.h),
              Text(
                data['label'],
                style: Styles.textStyle16,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
