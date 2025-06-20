import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insighta/core/theming/colors.dart';
import 'package:insighta/core/utils/styles.dart';

class OtpTextField extends StatefulWidget {
  final int index;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String value) onChanged;

  const OtpTextField({
    super.key,
    required this.index,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  bool _hasNumber = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_checkForNumber);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_checkForNumber);
    super.dispose();
  }

  void _checkForNumber() {
    final text = widget.controller.text;
    setState(() {
      _hasNumber = text.isNotEmpty && RegExp(r'\d').hasMatch(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
        border: Border.all(
            color: _hasNumber ? Color(0xffc7a331) : ColorsManager.primaryColor),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: Styles.textStyle20P,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
                color:
                    _hasNumber ? Color(0xffc7a331) : ColorsManager.primaryColor,
                width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
                color:
                    _hasNumber ? Color(0xffc7a331) : ColorsManager.primaryColor,
                width: 1),
          ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
