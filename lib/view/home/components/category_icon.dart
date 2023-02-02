import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        width: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 10,
            ),
            buildIconGrid(
              Icons.airplanemode_active_rounded,
              "Pesawat",
              Icons.festival,
              "Atraksi",
            ),
            buildIconGrid(Icons.home_work_outlined, "Hotel", Icons.spa,
                "Spa & Kecantikan"),
            buildIconGrid(
              Icons.calendar_today_outlined,
              "To Do",
              Icons.event,
              "Event",
            ),
            buildIconGrid(
              Icons.train,
              "Kereta",
              Icons.car_rental,
              "Sewa Mobil",
            ),
            buildIconGrid(
              Icons.villa,
              "Villa & Apt.",
              Icons.airport_shuttle,
              "Jemputan Bandara",
            ),
            buildIconGrid(
              Icons.house_rounded,
              "Tempat Bermain",
              Icons.private_connectivity_rounded,
              "Free Protection",
            ),
            buildIconGrid(
              Icons.content_paste_go_sharp,
              "JR Pass",
              Icons.payments_rounded,
              "PayLater",
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconGrid(IconData iconTop, String nameTop, IconData iconBottom,
      String nameBottom) {
    return Column(
      children: [
        SizedBox(
          height: 75,
          width: 65,
          child: Column(
            children: [
              CircleAvatar(
                child: Icon(iconTop),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                nameTop,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 75,
          width: 65,
          child: Column(
            children: [
              CircleAvatar(
                child: Icon(iconBottom),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                nameBottom,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
