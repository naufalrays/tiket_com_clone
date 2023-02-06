import 'package:flutter/material.dart';
import 'package:tiket_com_clone/view/home/category_components/category_icon.dart';
import 'package:tiket_com_clone/view/home/discount_components/discount_container.dart';
import 'package:tiket_com_clone/view/home/promo_components/promo_container.dart';
import 'package:tiket_com_clone/view/home/todo_components/todo_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0064d3),
        body: CustomScrollView(
          slivers: [
            const SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(expandedHeight: 120),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Column(
                    children: [
                      buildBody(),
                      const CategoryIcon(),
                    ],
                  ),
                  Positioned(
                    top: 120,
                    left: 20,
                    right: 20,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 2,
                      child: SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 11,
                                    width: 11,
                                    child: Image.asset(
                                        "assets/images/ticket_coin_logo.png"),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    'tiket Points',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Daftar dan lengkapi profilmu untuk dapetin 7.000 poin!',
                                style: TextStyle(
                                  color: Color(0xff0064d3),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DiscountContainer(),
            const PromoContainer(),
            const TodoContainer(),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 1000,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  Widget buildBody() {
    return Image.network(
      "https://blog.tiket.com/wp-content/uploads/Featured_Image_IN-900x570.jpg",
      height: 150,
      width: double.maxFinite,
      fit: BoxFit.cover,
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    const size = 60;
    final top = expandedHeight - shrinkOffset - size / 2;
    print(overlapsContent);
    // print(expandedHeight);
    // print(shrinkOffset);
    final sizeQuery = MediaQuery.of(context);

    return Stack(
      children: [
        Stack(
          // clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            buildAppBar(shrinkOffset),
            Positioned(
              top: sizeQuery.padding.top,
              left: 20,
              right: 20,
              child: searchBar(shrinkOffset),
            ),
          ],
        ),
      ],
    );
  }

  double appear(double shrinkOffset) {
    return (shrinkOffset * 2 / expandedHeight) <= 1.0
        ? shrinkOffset * 2 / expandedHeight
        : 1.0;
  }

  Widget buildAppBar(double shrinkOffset) {
    return Opacity(
      opacity: appear(shrinkOffset),
      child: AppBar(
        backgroundColor: Colors.white,
        title: const Text(''),
      ),
    );
    // return AppBar(
    //   backgroundColor: Colors.white70.withOpacity(0.3),
    //   title: const Text('sss'),
    // );
  }

  Widget searchBar(double shrinkOffset) {
    print(shrinkOffset);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 40,
          width: (290 + (shrinkOffset * 0.5)) <= 345
              ? (290 + (shrinkOffset * 0.5))
              : 345,
          child: TextFormField(
            // autocorrect: false,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              fillColor: Colors.grey[100],
              // focusColor: Colors.white,
              // fillColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black54,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 2.0,
                ),
              ),
              // label: const Text(
              //   'Cari di ',
              //   style: TextStyle(color: Colors.black54),
              // ),
              hintText: "Event di Jakarta",
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: (93 - (shrinkOffset * 0.5)) <= 38
              ? 38
              : (93 - (shrinkOffset * 0.5)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                const Icon(
                  Icons.discount,
                  size: 14,
                  color: Colors.black87,
                ),
                Visibility(
                  visible: shrinkOffset <= 93,
                  child: const SizedBox(
                    width: 8,
                  ),
                ),
                const Expanded(
                  child: Text(
                    'Promo',
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => kToolbarHeight + 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
