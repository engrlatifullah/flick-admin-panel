import 'package:flick_admin_panel/screens/custom_nav_bar/widget/custom_bottom_card.dart';
import 'package:flick_admin_panel/theme/colors.dart';
// class CustomNavBar extends StatefulWidget {
//   const CustomNavBar({Key? key}) : super(key: key);
//
//   @override
//   State<CustomNavBar> createState() => _CustomNavBarState();
// }
//
// class _CustomNavBarState extends State<CustomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: SafeArea(
//         child: Scaffold(
//           body: const TabBarView(
//             // physics: NeverScrollableScrollPhysics(),
//             children: [
//               HomeScreen(),
//               PlaylistScreen(),
//               FlickMagazine(),
//               SceduleScreen(),
//               // HomeScreen(),
//             ],
//           ),
//           bottomNavigationBar:  Container(
//             color: AppColors.primaryBlack,
//             height: MediaQuery.of(context).size.height * 0.1,
//             width: double.infinity,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Main3DButton(
//                   widget: CustomBottomCard(
//                     title: "Home",
//                     icon: Icons.home,
//                     selectedIndex: selectedIndex,
//                     index: 0,
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 0;
//                         _pageController.animateToPage(
//                           selectedIndex,
//                           duration: const Duration(milliseconds: 800),
//                           curve: Curves.decelerate,
//                         );
//                       });
//                     },
//                   ),
//                 ),
//                 Main3DButton(
//                   widget: CustomBottomCard(
//                     title: "flick Mag",
//                     icon: Icons.menu_book_rounded,
//                     selectedIndex: selectedIndex,
//                     index: 1,
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 1;
//                         _pageController.animateToPage(
//                           selectedIndex,
//                           duration: const Duration(milliseconds: 800),
//                           curve: Curves.decelerate,
//                         );
//                       });
//                     },
//                   ),
//                 ),
//                 Main3DButton(
//                   widget: CustomBottomCard(
//                     title: "Playlist",
//                     icon: Icons.more_horiz,
//                     selectedIndex: selectedIndex,
//                     index: 2,
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 2;
//                         _pageController.animateToPage(
//                           selectedIndex,
//                           duration: const Duration(milliseconds: 800),
//                           curve: Curves.decelerate,
//                         );
//                       });
//                     },
//                   ),
//                 ),
//                 Main3DButton(
//                   widget: CustomBottomCard(
//                     title: "Schedule",
//                     icon: Icons.playlist_add_check_circle_sharp,
//                     selectedIndex: selectedIndex,
//                     index: 3,
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 3;
//                         _pageController.animateToPage(
//                           selectedIndex,
//                           duration: const Duration(milliseconds: 800),
//                           curve: Curves.decelerate,
//                         );
//                       });
//                     },
//                   ),
//                 ),
//                 Main3DButton(
//                   widget: CustomBottomCard(
//                     title: "More",
//                     icon: Icons.more_horiz,
//                     selectedIndex: selectedIndex,
//                     index: 4,
//                     onPressed: () {
//                       setState(() {
//                         selectedIndex = 4;
//                         _pageController.animateToPage(
//                           selectedIndex,
//                           duration: const Duration(milliseconds: 800),
//                           curve: Curves.decelerate,
//                         );
//                       });
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // bottomNavigationBar: Container(
//           //   color: AppColor.lightBlackColor,
//           //   child: TabBar(
//           //     labelColor: AppColor.mainColor.withOpacity(0.9),
//           //     unselectedLabelColor: AppColor.greyColor,
//           //     isScrollable: true,
//           //     tabs: [
//           //       Tab(
//           //         iconMargin: const EdgeInsets.only(top: 5),
//           //         text: AppText.home,
//           //         icon: const Icon(Icons.home),
//           //       ),
//           //       Tab(
//           //         iconMargin: const EdgeInsets.only(top: 5),
//           //         text: AppText.playlist,
//           //         icon: const Icon(Icons.playlist_play_outlined),
//           //       ),
//           //       Tab(
//           //         iconMargin: const EdgeInsets.only(top: 5),
//           //         text: AppText.flickmag,
//           //         icon: const Icon(Icons.manage_accounts_rounded),
//           //       ),
//           //       Tab(
//           //         iconMargin: const EdgeInsets.only(top: 5),
//           //         text: AppText.schedule,
//           //         icon: const Icon(Icons.schedule),
//           //       ),
//           //       // Tab(
//           //       //   iconMargin: const EdgeInsets.only(top: 5 ),text: AppText.upload,icon: const Icon(Icons.upload),),
//           //     ],
//           //   ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../utils/global.dart';
import '../../widget/buttons.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      bottomNavigationBar: Container(
        color: AppColors.primaryBlack,
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Main3DButton(
              widget: CustomBottomCard(
                title: "Home",
                icon: Icons.home,
                selectedIndex: selectedIndex,
                index: 0,
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                    _pageController.animateToPage(
                      selectedIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.decelerate,
                    );
                  });
                },
              ),
            ),
            Main3DButton(
              widget: CustomBottomCard(
                title: "Playlist",
                icon: Icons.music_note,
                selectedIndex: selectedIndex,
                index: 1,
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                    _pageController.animateToPage(
                      selectedIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.decelerate,
                    );
                  });
                },
              ),
            ),
            Main3DButton(
              widget: CustomBottomCard(
                title: "flick Mag",
                icon: Icons.settings,
                selectedIndex: selectedIndex,
                index: 2,
                onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                    _pageController.animateToPage(
                      selectedIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.decelerate,
                    );
                  });
                },
              ),
            ),
            Main3DButton(
              widget: CustomBottomCard(
                title: "Schedule",
                icon: Icons.playlist_add_check_circle_sharp,
                selectedIndex: selectedIndex,
                index: 3,
                onPressed: () {
                  setState(() {
                    selectedIndex = 3;
                    _pageController.animateToPage(
                      selectedIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.decelerate,
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
    );
  }
}
