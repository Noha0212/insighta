// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:insighta/core/utils/styles.dart';

// ignore: camel_case_types
class reportCard extends StatelessWidget {
  const reportCard(
    Key? key,
    this.platform,
    this.assetPath,
  ) : super(key: key);
  final String platform;
  final String assetPath;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 18.h,
        horizontal: 22.w,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffC8C3C3)),
        borderRadius: BorderRadius.circular(12.r),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    assetPath,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    platform,
                    style: Styles.textStyle20,
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Image.asset('assets/images/card_image.png'),
              SizedBox(
                height: 12.h,
              ),
              Text(
                '"Please remember to wear a headscarf when visiting the mosque as a sign of respect for Islamic traditions and the sacredness of the place. Wearing a headscarf reflects modesty and reverence in religious spaces and is part of the etiquette for entering mosques."',
                style: Styles.textStyle12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
