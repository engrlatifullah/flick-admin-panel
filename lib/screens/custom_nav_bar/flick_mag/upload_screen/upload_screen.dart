import 'package:flick_admin_panel/screens/custom_nav_bar/flick_mag/upload_screen/widget/custom_input.dart';
import 'package:flick_admin_panel/utils/constant.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_text.dart';
import '../../../../theme/colors.dart';
import '../../../../theme/text_style.dart';
import '../../../../widget/primary_button.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final TextEditingController dateTimeController = TextEditingController();

  pickDateAndTime() {
    showDatePicker(
      context: context,
      initialDate:  DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        dateTimeController.text =
            "${value!.day}-${value.month}-${value.year} | ${TimeOfDay.now().format(context)}";
      });
    });
  }
  @override
  void dispose() {
    dateTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            AppText.upload,
            style: AppStyle.heading2,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: getHeight(context, 0.25),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lightBlackColor,
                  ),
                  child: Icon(
                    Icons.add_a_photo,
                    color: AppColors.primaryWhite,
                    size: 40
                  ),
                ),
                const SizedBox(height: 30),
                CustomInput(
                  hintText: AppText.title,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    pickDateAndTime();
                  },
                  child: CustomInput(
                    controller:dateTimeController,
                    hintText: AppText.dateTime,
                    enabled: false,
                  ),
                ),
                const SizedBox(
                  height: 20
                ),
                CustomInput(
                  maxLines: 4,
                  hintText: AppText.description,
                ),
                const SizedBox(
                  height: 40
                ),
                PrimaryButton(title: AppText.save, onTap: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
