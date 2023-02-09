import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/flight_promo_components/cutom_tab_bar_flight.dart';

class FlightPromoContainer extends StatelessWidget {
  const FlightPromoContainer({super.key});

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
                'Ayo liburan ke destinasi menarik!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 8, right: 24, bottom: 10),
              child: Text(
                'Ada berbagai pilihan penerbangan dengan harga spesial, lho. Jangan sampai kehabisan ya!',
                maxLines: 2,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            CustomTabBarFlight(),
            // const CustomTabBarTodo(),
            // CustomButtonHomeView(
            //   padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
            //   textButton: "Lihat semua Todo",
            // )
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
