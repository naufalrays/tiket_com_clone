import 'package:flutter/material.dart';
import 'package:tiket_com_clone/view/home/home_view.dart';
import 'package:tiket_com_clone/view/users/user_view.dart';

class MainViewModel extends ChangeNotifier {
  int index = 0;
  void selectDestination(int value) {
    index = value;
    notifyListeners();
  }

  List screen = [
    const HomeView(),
    const UserView(),
    const UserView(),
    const UserView(),
  ];
}
