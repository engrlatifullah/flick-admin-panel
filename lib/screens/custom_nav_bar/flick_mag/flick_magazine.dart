import 'package:flick_admin_panel/model/flick_magazine_model.dart';
import 'package:flick_admin_panel/screens/custom_nav_bar/flick_mag/upload_screen/upload_screen.dart';
import 'package:flick_admin_panel/screens/edit_screen/edit_screen.dart';
import 'package:flick_admin_panel/theme/app_text.dart';
import 'package:flick_admin_panel/utils/constant.dart';
import 'package:flick_admin_panel/utils/navigation.dart';
import 'package:flick_admin_panel/widget/custom_popup_button.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../../../theme/text_style.dart';

class FlickMagazine extends StatefulWidget {
  const FlickMagazine({Key? key}) : super(key: key);

  @override
  State<FlickMagazine> createState() => _FlickMagazineState();
}

class _FlickMagazineState extends State<FlickMagazine> {
  final List<String> popupTitle = [AppText.edit, AppText.duplicate, AppText.delete];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            AppText.flickMagazine,
            style: AppStyle.heading1.copyWith(color: AppColors.mainColor.withOpacity(0.9), fontWeight: FontWeight.w600, fontSize: 18),
          )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        SizedBox(
                          height: getHeight(context, 0.3),
                          width: double.infinity,
                          child: Image.network(fit: BoxFit.cover, magazineData[index].image.toString()),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.lightBlackColor,
                            shape: BoxShape.circle,
                          ),
                          child: CustomPopupButton(
                            onSelected: (v) {
                              if (v == AppText.edit) {
                                navigateToPage(
                                  context,
                                  EditScreen(
                                    image: magazineData[index].image.toString(),
                                    title: magazineData[index].title.toString(),
                                    subtitle: magazineData[index].subtitle.toString(),
                                  ),
                                );
                              }
                              else if(v == AppText.upload){
                                navigateToPage(context, const UploadScreen());
                              }
                            },
                            item: [
                              PopupMenuItem(
                                value: AppText.edit,
                                child: Text(
                                  AppText.edit,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                              const PopupMenuDivider(
                                height: 5,
                              ),
                              PopupMenuItem(
                                value: AppText.upload,
                                child: Text(
                                  AppText.upload,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                              const PopupMenuDivider(
                                height: 5,
                              ),
                              PopupMenuItem(
                                child: Text(
                                  AppText.duplicate,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                              const PopupMenuDivider(
                                height: 5,
                              ),
                              PopupMenuItem(
                                child: Text(
                                  AppText.delete,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      magazineData[index].title.toString(),
                      style: AppStyle.heading1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      magazineData[index].subtitle.toString(),
                      style: AppStyle.heading1.copyWith(fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      magazineData[index].lastSeen.toString(),
                      style: AppStyle.heading1.copyWith(fontWeight: FontWeight.w300, color: AppColors.greyColor),
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
