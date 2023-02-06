import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/components/custom_button_home_view.dart';
import 'package:tiket_com_clone/view/home/todo_components/custom_tab_bar_todo.dart';

class TodoContainer extends StatelessWidget {
  const TodoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 444,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              height: 5,
              thickness: 5,
              color: MyColor.second,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 22, 24, 10),
              child: Text(
                'Buat trip-mu makin komplit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const CustomTabBarTodo(),
            CustomButtonHomeView(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
              textButton: "Lihat semua Todo",
            )
          ],
        ),
      ),
    );
  }
}
