import 'package:flick_admin_panel/theme/colors.dart';
import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  final VoidCallback onTap;
  const EditButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.lightBlackColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.edit,
          color: AppColors.primaryWhite,
          size: 20,
        ),
      ),
    );
  }
}
