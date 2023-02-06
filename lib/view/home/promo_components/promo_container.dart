import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';
import 'package:tiket_com_clone/view/home/promo_components/custom_promo_card.dart';

class PromoContainer extends StatefulWidget {
  const PromoContainer({super.key});

  @override
  State<PromoContainer> createState() => _PromoContainerState();
}

class _PromoContainerState extends State<PromoContainer> {
  List imageList = [
    {
      "id": 1,
      "image_path": "assets/images/promo_container_1.png",
      "header": "Jurus antibokek abis gajian",
      "text": "Diskon Tanggal Muda s.d. 50% + ekstra s.d. IDR 550rb."
    },
    {
      "id": 2,
      "image_path": "assets/images/promo_container_2.png",
      "header": "Mau liburan hemat? Gas!!",
      "text": "Diskon kereta, mobil, & jemputan bandara s.d. 500rb."
    },
    {
      "id": 3,
      "image_path": "assets/images/promo_container_3.png",
      "header": "Mau lebih untung?",
      "text": "Bayar dengan Kartu Kredit BCA tiket.com."
    }
  ];
  List discount = ["Promo Gajian", "Jalan Hemat", "tiket x BCA"];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 244,
        color: Colors.white,
        child: Column(
          children: [
            const Divider(
              height: 5,
              thickness: 5,
              color: MyColor.second,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 170,
                  width: double.maxFinite,
                  child: CarouselSlider(
                    items: List.generate(
                      imageList.length,
                      (index) => CustomPromoCard(
                        asset: imageList[index]["image_path"],
                        header: imageList[index]["header"],
                        text: imageList[index]["text"],
                      ),
                    ),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 42,
                  left: 50,
                  child: IgnorePointer(
                    child: SizedBox(
                      height: 128,
                      width: 128,
                      child: Image.asset(
                        "assets/images/traveller.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                discount.length,
                (index) => GestureDetector(
                  onTap: () async {
                    if (currentIndex == 0 && index == 2) {
                      await carouselController.animateToPage(1);
                      carouselController.animateToPage(2);
                    } else if (currentIndex == 2 && index == 0) {
                      await carouselController.animateToPage(1);
                      carouselController.animateToPage(0);
                    } else {
                      carouselController.animateToPage(index);
                    }
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            discount[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: currentIndex == index ? 6 : 12,
                      ),
                      Visibility(
                        visible: currentIndex == index,
                        child: Container(
                          height: 6,
                          width: 12,
                          // color: Colors.blue,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: MyColor.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
