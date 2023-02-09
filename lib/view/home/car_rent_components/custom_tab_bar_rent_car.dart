import 'package:flutter/material.dart';

class CustomTabBarRentCar extends StatefulWidget {
  const CustomTabBarRentCar({super.key});

  @override
  State<CustomTabBarRentCar> createState() => _CustomTabBarRentCarState();
}

class _CustomTabBarRentCarState extends State<CustomTabBarRentCar> {
  List rentCar = [
    "assets/images/bali_rent_car.png",
    "assets/images/yogyakarta_rent_car.png",
    "assets/images/surabaya_rent_car.png",
    "assets/images/jakarta_rent_car.png",
    "assets/images/bandung_rent_car.png",
    "assets/images/medan_rent_car.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          rentCar.length,
          (index) => Row(
            children: [
              Visibility(
                visible: index == 0,
                child: const SizedBox(
                  width: 24,
                ),
              ),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 158,
                width: 158,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  rentCar[index],
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Visibility(
                visible: index == rentCar.length - 1,
                child: const SizedBox(
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
