import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/flight_promo_components/all_flight_cards.dart';

class CustomTabBarFlight extends StatefulWidget {
  const CustomTabBarFlight({super.key});

  @override
  State<CustomTabBarFlight> createState() => _CustomTabBarFlightState();
}

class _CustomTabBarFlightState extends State<CustomTabBarFlight> {
  List<Widget> icons = [
    AllFlightCards(dataSequence: 0),
    AllFlightCards(dataSequence: 1),
    AllFlightCards(dataSequence: 2),
  ];

  List items = [
    "Domestik Deals",
    "Intl. Deals",
    "Intl. Premium Deals",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
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
