import 'package:flick_admin_panel/theme/app_text.dart';
import 'package:flick_admin_panel/theme/colors.dart';
import 'package:flick_admin_panel/theme/text_style.dart';
import 'package:flick_admin_panel/widget/primary_button.dart';
import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SafeArea(
            child: Column(
              children: [
                Text("Logo", style: AppStyle.heading1),
                const SizedBox(height: 30),
                TextField(
                  style: TextStyle(color: AppColors.primaryWhite),
                  decoration: InputDecoration(
                    hintText: "Spotify Link",
                    filled: true,
                    fillColor: AppColors.lightBlackColor,
                    hintStyle: TextStyle(color: AppColors.greyColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: TextStyle(color: AppColors.primaryWhite),
                  decoration: InputDecoration(
                    hintText: AppText.description,
                    filled: true,
                    fillColor: AppColors.lightBlackColor,
                    hintStyle: TextStyle(color: AppColors.greyColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                PrimaryButton(
                  title: AppText.uploadSpotifyPlaylist,
                  onTap: () {
                    // showDialog(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return Dialog(
                    //       backgroundColor: AppColors.lightBlackColor,
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(15.0),
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           mainAxisSize: MainAxisSize.min,
                    //           children: [
                    //             Text(
                    //               AppText.description,
                    //               style: AppStyle.heading1,
                    //             ),
                    //             const SizedBox(height: 10),
                    //             TextField(
                    //               style: TextStyle(color: AppColors.primaryWhite),
                    //               decoration: InputDecoration(
                    //                 hintText: AppText.description,
                    //                 filled: true,
                    //                 fillColor: AppColors.lightBlackColor,
                    //                 hintStyle: TextStyle(color: AppColors.greyColor),
                    //                 enabledBorder: OutlineInputBorder(
                    //                   borderSide: BorderSide(color: AppColors.primaryWhite),
                    //                 ),
                    //                 focusedBorder: OutlineInputBorder(
                    //                   borderSide: BorderSide(color: AppColors.primaryWhite),
                    //                 ),
                    //               ),
                    //             ),
                    //             const SizedBox(
                    //               height: 10,
                    //             ),
                    //             TextField(
                    //               style: TextStyle(color: AppColors.primaryWhite),
                    //               decoration: InputDecoration(
                    //                 hintText: AppText.description,
                    //                 filled: true,
                    //                 fillColor: AppColors.lightBlackColor,
                    //                 hintStyle: TextStyle(color: AppColors.greyColor),
                    //                 enabledBorder: OutlineInputBorder(
                    //                   borderSide: BorderSide(color: AppColors.primaryWhite),
                    //                 ),
                    //                 focusedBorder: OutlineInputBorder(
                    //                   borderSide: BorderSide(color: AppColors.primaryWhite),
                    //                 ),
                    //               ),
                    //             ),
                    //             ReusableButton(
                    //               title: AppText.add,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // );
                  },
                ),
                const SizedBox(height: 40),
                TextField(
                  style: TextStyle(color: AppColors.primaryWhite),
                  decoration: InputDecoration(
                    hintText: "Youtube Video Link",
                    filled: true,
                    fillColor: AppColors.lightBlackColor,
                    hintStyle: TextStyle(color: AppColors.greyColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: TextStyle(color: AppColors.primaryWhite),
                  decoration: InputDecoration(
                    hintText: AppText.description,
                    filled: true,
                    fillColor: AppColors.lightBlackColor,
                    hintStyle: TextStyle(color: AppColors.greyColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryWhite),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                PrimaryButton(
                  title: AppText.uploadYoutubeVideo,
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
