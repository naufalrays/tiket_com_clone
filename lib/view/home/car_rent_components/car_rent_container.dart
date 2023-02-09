import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/car_rent_components/custom_tab_bar_rent_car.dart';

class CarRentContainer extends StatelessWidget {
  const CarRentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Divider(
              height: 5,
              thickness: 5,
              color: MyColor.second,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 22, right: 24),
              child: Text(
                'Mau jelajahi seluruh sudut kota? Bisaaa!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 8, right: 24, bottom: 20),
              child: Text(
                'Jadi lebih fleksibel keliling kota destinasi dengan sewa mobil lepas kunci.',
                maxLines: 2,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            CustomTabBarRentCar(),
            SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}
