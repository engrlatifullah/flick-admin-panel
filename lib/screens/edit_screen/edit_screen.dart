import 'package:flick_admin_panel/screens/edit_screen/widget/edit_button.dart';
import 'package:flick_admin_panel/theme/colors.dart';
import 'package:flick_admin_panel/theme/text_style.dart';
import 'package:flick_admin_panel/utils/constant.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const EditScreen({Key? key, required this.title, required this.subtitle, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top image whith back and iconbutton
            Container(
              height: getHeight(context, 0.32),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    image,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: AppColors.primaryWhite,
                        )),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: EditButton(onTap: () {}),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  // title
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: AppStyle.heading1.copyWith(
                            fontSize: 30,
                            color: AppColors.mainColor.withOpacity(0.9),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      EditButton(onTap: () {}),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // subtitle
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          subtitle,
                          style: AppStyle.heading2.copyWith(color: AppColors.primaryWhite, fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      EditButton(onTap: () {}),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greyColor, width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EditButton(onTap: () {}),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Pharetra et vel erat dolor ut amet. Faucibus purus elit amet semper vestibulum leo ipsum tortor nullam. Morbi vel quam egestas pulvinar ultrices. Ipsum non in amet rhoncus vestibulum in diam in in. Eleifend arcu proin quis nascetur placerat enim nisi. Sem adipiscing magna tortor vivamus tellus nullam. Nisl tellus egestas donec dui tincidunt a a varius lectus.",
                          style: AppStyle.heading3.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Pharetra et vel erat dolor ut amet. Faucibus purus elit amet semper vestibulum leo ipsum tortor nullam. Morbi vel quam egestas pulvinar ultrices. Ipsum non in amet rhoncus vestibulum in diam in in. Eleifend arcu proin quis nascetur placerat enim nisi. Sem adipiscing magna tortor vivamus tellus nullam. Nisl tellus egestas donec dui tincidunt a a varius lectus.",
                          style: AppStyle.heading3.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Pharetra et vel erat dolor ut amet. Faucibus purus elit amet semper vestibulum leo ipsum tortor nullam. Morbi vel quam egestas pulvinar ultrices. Ipsum non in amet rhoncus vestibulum in diam in in. Eleifend arcu proin quis nascetur placerat enim nisi. Sem adipiscing magna tortor vivamus tellus nullam. Nisl tellus egestas donec dui tincidunt a a varius lectus.",
                          style: AppStyle.heading3.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
