import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/components/custom_button_home_view.dart';
import 'package:tiket_com_clone/view/home/discount_components/custom_tab_bar_discount.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              height: 1,
              color: MyColor.second,
            ),
            // const SizedBox(
            //   height: 18,
            // ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 22, 24, 10),
              child: Text(
                'Cek promo sebelum bepergian, kuy!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const CustomTabBarDiscount(),
            CustomButtonHomeView(
              textButton: "Lihat semua promo",
            )
          ],
        ),
      ),
    );
  }
}
