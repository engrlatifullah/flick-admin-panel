import 'package:flick_admin_panel/theme/colors.dart';
import 'package:flick_admin_panel/theme/text_style.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  const PrimaryButton({
    super.key,
    this.onTap,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        alignment: Alignment.center,
        color: AppColors.mainColor.withOpacity(0.9),
        child: Text(
          title!,
          textAlign: TextAlign.center,
          style: AppStyle.heading3.copyWith(color: AppColors.primaryBlack, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
