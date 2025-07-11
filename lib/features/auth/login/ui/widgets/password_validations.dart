// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:insighta/core/theming/colors.dart';
import 'package:insighta/core/utils/styles.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasUpperCase,
    required this.hasLowerCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 uppercase letter.', hasUpperCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least 1 lowercase letter.', hasLowerCase),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow(
            'At least 1 special character.', hasSpecialCharacters),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least 1 number.', hasNumber),
        SizedBox(
          height: 2.h,
        ),
        buildValidationRow('At least 8 characters long.', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: ColorsManager.navBarText,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          text,
          style: Styles.textStyle12I.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated
                ? ColorsManager.navBarText
                : ColorsManager.primaryColor,
          ),
        ),
      ],
    );
  }
}
