import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/todo_components/all_todo_cards.dart';

class CustomTabBarTodo extends StatefulWidget {
  const CustomTabBarTodo({super.key});

  @override
  State<CustomTabBarTodo> createState() => _CustomTabBarTodoState();
}

class _CustomTabBarTodoState extends State<CustomTabBarTodo> {
  List<Widget> icons = [
    AllTodoCards(dataSequence: 0),
    AllTodoCards(dataSequence: 1),
    AllTodoCards(dataSequence: 2),
    AllTodoCards(dataSequence: 3),
    AllTodoCards(dataSequence: 4),
    AllTodoCards(dataSequence: 5),
    AllTodoCards(dataSequence: 6),
    AllTodoCards(dataSequence: 7),
  ];

  List items = [
    "Atraksi",
    "Hotel",
    "Homes",
    "Event",
    "Tempat Bermain",
    "Tur",
    "Kecantikan & Kebugaran",
    "Lainnya",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            color: Colors.white,
            height: 46,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Visibility(
                      visible: index == 0,
                      child: const SizedBox(
                        width: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 5),
                        decoration: BoxDecoration(
                          color:
                              current == index ? MyColor.second : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: current == index
                                ? MyColor.primary
                                : Colors.black26,
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Text(
                              items[index],
                              style: TextStyle(
                                color: current == index
                                    ? MyColor.primary
                                    : Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: index == items.length - 1,
                      child: const SizedBox(
                        width: 20,
                      ),
                    ),
                    // Text('DSSD'),
                  ],
                );
              },
            ),
          ),
        ),
        icons[current]
      ],
    );
  }
}
