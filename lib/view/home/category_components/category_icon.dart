import 'package:flutter/material.dart';
import 'package:tiket_com_clone/view/home/category_components/custom_icon_grid_category.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      height: 234,
      width: double.maxFinite,
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
            width: 20,
          ),
          CustomIconGridCategory(
            nameAssetTop: "assets/images/plane_icon.png",
            nameTop: "Pesawat",
            nameAssetBottom: "assets/images/carnival_icon.png",
            nameBottom: "Atraksi",
          ),
          CustomIconGridCategory(
            nameAssetTop: "assets/images/hotel_icon.png",
            nameTop: "Hotel",
            nameAssetBottom: "assets/images/spa_icon.png",
            nameBottom: "Spa & Kecantikan",
          ),
          CustomIconGridCategory(
            nameAssetTop: "assets/images/todo_icon.png",
            nameTop: "To Do",
            nameAssetBottom: "assets/images/event_icon.png",
            nameBottom: "Event",
          ),
          CustomIconGridCategory(
            nameAssetTop: "assets/images/train_icon.png",
            nameTop: "Kereta",
            nameAssetBottom: "assets/images/rent_car_icon.png",
            nameBottom: "Sewa Mobil",
          ),
          CustomIconGridCategory(
            nameAssetTop: "assets/images/apart_icon.png",
            nameTop: "Villa & Apt.",
            nameAssetBottom: "assets/images/airport_pickup_icon.png",
            nameBottom: "Jemputan Bandara",
          ),
          CustomIconGridCategory(
            nameAssetTop: "assets/images/playground_icon.png",
            nameTop: "Tempat Bermain",
            nameAssetBottom: "assets/images/free_protection_icon.png",
            nameBottom: "Free Protection",
          ),
          CustomIconGridCategory(
            nameAssetTop: "assets/images/jr_pass_icon.png",
            nameTop: "JR Pass",
            nameAssetBottom: "assets/images/paylater_icon.png",
            nameBottom: "PayLater",
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
