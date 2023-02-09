import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view_models.dart/main_view_model.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainViewModel>(
      builder: (context, mainViewModel, child) {
        return Scaffold(
          body: mainViewModel.screen[mainViewModel.index],
          bottomNavigationBar: SizedBox(
            height: 104,
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: mainViewModel.index,
                unselectedItemColor: Colors.grey,
                selectedItemColor: MyColor.primary,
                selectedFontSize: 12,
                onTap: (value) {
                  mainViewModel.selectDestination(value);
                },
                items: const [
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(
                        CupertinoIcons.house_alt_fill,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Your Orders",
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(
                        CupertinoIcons.ticket_fill,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Elite Rewards",
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(
                        CupertinoIcons.star_circle_fill,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Akun",
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(
                        CupertinoIcons.person_fill,
                      ),
                    ),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
