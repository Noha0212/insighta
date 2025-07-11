// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:insighta/core/utils/styles.dart';
import 'package:insighta/core/widgets/custom_back_button.dart';

class ReportCardDetailsScreen extends StatelessWidget {
  final Map<String, dynamic>? arguments;
  const ReportCardDetailsScreen({
    super.key,
    this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    final String platform = arguments!['platform'];
    final String assetPath = arguments!['assetPath'];

    final Color color = arguments!['color'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: CustomBackButton(),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Card(
              elevation: 2,
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
                padding: EdgeInsets.all(18.r),
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
                          style: Styles.textStyle20I.copyWith(color: color),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      '"Please remember to wear a headscarf when visiting the mosque as a sign of respect for Islamic traditions and the sacredness of the place. Wearing a headscarf reflects modesty and reverence in religious spaces and is part of the etiquette for entering mosques.""Please remember to wear a headscarf when visiting the mosque as a sign of respect for Islamic traditions and the sacredness of the place. Wearing a headscarf reflects modesty and reverence in religious spaces and is part of the etiquette for entering mosques.""Please remember to wear a headscarf when visiting the mosque as a sign of respect for Islamic traditions and the sacredness of the place. Wearing a headscarf reflects modesty and reverence in religious spaces and is part of the etiquette for entering mosques.""Please remember to wear a headscarf when visiting the mosque as a sign of respect for Islamic traditions and the sacredness of the place. Wearing a headscarf reflects modesty and reverence in religious spaces and is part of the etiquette for entering mosques."',
                      style: Styles.textStyle12I,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset('assets/images/card_image.png',
                width: 240.w, height: 200.h)
          ],
        )));
  }
}
