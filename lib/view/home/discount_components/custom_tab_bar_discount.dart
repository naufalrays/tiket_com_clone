import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/discount_components/all_discount_card.dart';

class CustomTabBarDiscount extends StatefulWidget {
  const CustomTabBarDiscount({super.key});

  @override
  State<CustomTabBarDiscount> createState() => _CustomTabBarDiscountState();
}

class _CustomTabBarDiscountState extends State<CustomTabBarDiscount> {
  List<Widget> icons = [
    AllDiscountCard(dataSequence: 0),
    AllDiscountCard(dataSequence: 1),
    AllDiscountCard(dataSequence: 2),
    AllDiscountCard(dataSequence: 3),
    AllDiscountCard(dataSequence: 4),
    AllDiscountCard(dataSequence: 5),
    AllDiscountCard(dataSequence: 6),
    AllDiscountCard(dataSequence: 7),
  ];
  List items = [
    "Semua",
    "Pesawat",
    "Hotel",
    "Villa & Apt.",
    "To do",
    "Kereta Api",
    "Sewa Mobil",
    "Jemputan Bandara",
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
