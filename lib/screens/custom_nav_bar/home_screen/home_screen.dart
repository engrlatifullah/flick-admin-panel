import 'package:flick_admin_panel/theme/app_text.dart';
import 'package:flick_admin_panel/theme/colors.dart';
import 'package:flick_admin_panel/theme/text_style.dart';
import 'package:flick_admin_panel/utils/constant.dart';
import 'package:flick_admin_panel/widget/primary_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List images = [
    "https://images.unsplash.com/photo-1620400975473-777541fd7add?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1601054704854-1a2e79dda4d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1620403724159-40363e84a155?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
  ];

  int _count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              Text("Logo", style: AppStyle.heading1),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.pictureSlider,
                        style: AppStyle.heading1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: getHeight(context, 0.4),
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(images[_count]),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                if (_count > 0) {
                                  setState(() {
                                    _count--;
                                  });
                                }
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.lightBlackColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.keyboard_arrow_left,
                                  size: 25,
                                  color: AppColors.primaryWhite,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (_count < images.length - 1) {
                                  setState(() {
                                    _count++;
                                  });
                                }
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.lightBlackColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 25,
                                  color: AppColors.primaryWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppText.slide1,
                            style: AppStyle.heading2,
                          ),
                          PrimaryButton(
                            title: AppText.changePicture,
                            onTap: () {},
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        AppText.playlist,
                        style: AppStyle.heading1,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                        color: AppColors.lightBlackColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  AppText.artisteName,
                                  style: AppStyle.heading2.copyWith(fontWeight: FontWeight.w300),
                                ),
                                const SizedBox(),
                                Text(
                                  AppText.trackTitle,
                                  style: AppStyle.heading2.copyWith(fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: AppColors.primaryWhite,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.skip_previous,
                                      color: AppColors.primaryWhite,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.play_circle,
                                      size: 40,
                                      color: AppColors.primaryWhite,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.skip_next,
                                      color: AppColors.primaryWhite,
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.add_circle_outline,
                                  color: AppColors.primaryWhite,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ListView.separated(
                      //   shrinkWrap: true,
                      //   itemCount: 8,
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return Row(
                      //       children: [
                      //         Icon(
                      //           Icons.menu,
                      //           color: AppColor.greyColor,
                      //         ),
                      //         const SizedBox(
                      //           width: 10,
                      //         ),
                      //         Expanded(
                      //           child: ListTile(
                      //             contentPadding: EdgeInsets.zero,
                      //             leading: Container(
                      //               height: 90,
                      //               width: 60,
                      //               color: AppColor.whiteColor,
                      //             ),
                      //             title: Text(
                      //               AppText.trackTitle,
                      //               style: AppStyle.heading3,
                      //             ),
                      //             subtitle: Text(
                      //               AppText.artisteName,
                      //               style: AppStyle.heading2,
                      //             ),
                      //             trailing: Container(
                      //               height: 40,
                      //               width: 40,
                      //               alignment: Alignment.center,
                      //               decoration: BoxDecoration(
                      //                 color: AppColor.lightBlackColor,
                      //                 shape: BoxShape.circle,
                      //               ),
                      //               child: CustomPopupButton(
                      //                 color: AppColor.greyColor,
                      //                   item: [
                      //                 PopupMenuItem(
                      //                   child: Text(
                      //                     AppText.changeTrack,
                      //                     style: TextStyle(
                      //                         color: AppColor.whiteColor),
                      //                   ),
                      //                 ),
                      //                 const PopupMenuDivider(
                      //                   height: 5,
                      //                 ),
                      //                 PopupMenuItem(
                      //                   child: Text(
                      //                     AppText.editTrackTitle,
                      //                     style: TextStyle(
                      //                         color: AppColor.whiteColor),
                      //                   ),
                      //                 ),
                      //                 const PopupMenuDivider(
                      //                   height: 5,
                      //                 ),
                      //                 PopupMenuItem(
                      //                   child: Text(
                      //                     AppText.editArtisteName,
                      //                     style: TextStyle(
                      //                         color: AppColor.whiteColor),
                      //                   ),
                      //                 ),
                      //                 const PopupMenuDivider(
                      //                   height: 5,
                      //                 ),
                      //                 PopupMenuItem(
                      //                   child: Text(
                      //                     AppText.editTrackCover,
                      //                     style: TextStyle(
                      //                         color: AppColor.whiteColor),
                      //                   ),
                      //                 ),
                      //               ]),
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     );
                      //   },
                      //   separatorBuilder: (BuildContext context, int index) {
                      //     return const SizedBox(
                      //       height: 10,
                      //     );
                      //   },
                      // ),
                      const SizedBox(height: 20),
                      // Text(
                      //   AppText.videoOfTheWeek,
                      //   style: AppStyle.heading1,
                      // ),
                      const SizedBox(height: 15),
                      // TextField(
                      //   style: TextStyle(color: AppColor.whiteColor),
                      //   decoration: InputDecoration(
                      //     hintText: AppText.enterLink,
                      //     filled: true,
                      //     fillColor: AppColor.lightBlackColor,
                      //     hintStyle: TextStyle(color: AppColor.greyColor),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: AppColor.whiteColor),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: AppColor.whiteColor),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 10),
                      // SizedBox(
                      //     width: getWidth(context, 0.3),
                      //     child: ReusableButton(
                      //       title: AppText.update,
                      //     )),

                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
