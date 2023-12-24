import 'package:flick_admin_panel/model/programme_scedule.dart';
import 'package:flick_admin_panel/screens/custom_nav_bar/widget/custom_dialoge.dart';
import 'package:flick_admin_panel/theme/app_text.dart';
import 'package:flick_admin_panel/theme/colors.dart';
import 'package:flick_admin_panel/theme/text_style.dart';
import 'package:flick_admin_panel/widget/custom_popup_button.dart';
import 'package:flutter/material.dart';

class SceduleScreen extends StatefulWidget {
  const SceduleScreen({Key? key}) : super(key: key);

  @override
  State<SceduleScreen> createState() => _SceduleScreenState();
}

class _SceduleScreenState extends State<SceduleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //programme scedule
            Center(
                child: Text(
              AppText.programmeSchedule,
              style: AppStyle.heading1.copyWith(color: AppColors.mainColor.withOpacity(0.9), fontWeight: FontWeight.w600, fontSize: 18),
            )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: schedualData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            schedualData[index].title.toString(),
                                            style: AppStyle.heading1,
                                          ),
                                          const Spacer(),
                                          Text(
                                            schedualData[index].time.toString(),
                                            style: AppStyle.heading2.copyWith(fontWeight: FontWeight.w300, color: AppColors.greyColor),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        schedualData[index].title.toString(),
                                        style: AppStyle.heading2.copyWith(fontWeight: FontWeight.w300, color: AppColors.greyColor),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                CustomPopupButton(
                                  onSelected: (v) {
                                    print(v);
                                    if (v == AppText.editTitle) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const CustomDialog();
                                        },
                                      );
                                    }
                                  },
                                  item: [
                                    PopupMenuItem(
                                      value: AppText.editTitle,
                                      child: Text(
                                        AppText.editTitle,
                                        style: TextStyle(color: AppColors.primaryWhite),
                                      ),
                                    ),
                                    const PopupMenuDivider(
                                      height: 5,
                                    ),
                                    PopupMenuItem(
                                      value: AppText.editDay,
                                      child: Text(
                                        AppText.editDay,
                                        style: TextStyle(color: AppColors.primaryWhite),
                                      ),
                                    ),
                                    const PopupMenuDivider(
                                      height: 5,
                                    ),
                                    PopupMenuItem(
                                      value: AppText.editTime,
                                      child: Text(
                                        AppText.editTime,
                                        style: TextStyle(color: AppColors.primaryWhite),
                                      ),
                                    ),
                                    const PopupMenuDivider(
                                      height: 5,
                                    ),
                                    PopupMenuItem(
                                      value: AppText.delete,
                                      child: Text(
                                        AppText.duplicate,
                                        style: TextStyle(color: AppColors.primaryWhite),
                                      ),
                                    ),
                                    const PopupMenuDivider(
                                      height: 5,
                                    ),
                                    PopupMenuItem(
                                      value: AppText.delete,
                                      child: Text(
                                        AppText.delete,
                                        style: TextStyle(color: AppColors.primaryWhite),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            color: AppColors.greyColor,
                            thickness: 1,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //our shows,
                      Center(
                          child: Text(
                        AppText.ourShows,
                        style: AppStyle.heading1
                            .copyWith(color: AppColors.mainColor.withOpacity(0.9), fontWeight: FontWeight.w600, fontSize: 18),
                      )),
                      const SizedBox(
                        height: 20,
                      ),

                      ...List.generate(3, (index) {
                        return ListTile(
                          contentPadding: const EdgeInsets.only(bottom: 15),
                          leading: Container(
                            height: 90,
                            width: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/mice.jpg"),
                              ),
                            ),
                          ),
                          title: Text(
                            AppText.beingYute,
                            style: AppStyle.heading3,
                          ),
                          trailing: CustomPopupButton(
                            onSelected: (v) {
                              print(v);
                              if (v == AppText.editTitle) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const CustomDialog();
                                  },
                                );
                              }
                            },
                            item: [
                              PopupMenuItem(
                                value: AppText.editTitle,
                                child: Text(
                                  AppText.editTitle,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                              const PopupMenuDivider(
                                height: 5,
                              ),
                              PopupMenuItem(
                                value: AppText.changeCover,
                                child: Text(
                                  AppText.changeCover,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                              const PopupMenuDivider(
                                height: 5,
                              ),
                              PopupMenuItem(
                                value: AppText.duplicate,
                                child: Text(
                                  AppText.duplicate,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                              const PopupMenuDivider(
                                height: 5,
                              ),
                              PopupMenuItem(
                                value: AppText.delete,
                                child: Text(
                                  AppText.delete,
                                  style: TextStyle(color: AppColors.primaryWhite),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
