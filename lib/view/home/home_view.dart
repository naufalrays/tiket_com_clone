import 'package:flutter/material.dart';
import 'package:tiket_com_clone/view/home/components/category_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            // const SliverAppBar(
            //   expandedHeight: 10,
            //   backgroundColor: Colors.blue,
            // ),
            const SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(expandedHeight: 120),
              pinned: true,
            ),
            buildBody(),
            const SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              sliver: CategoryIcon(),
            ),
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
    return SliverToBoxAdapter(
      child: Image.network(
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/discovery-mobile/promo/2022/08/09/97942eed-c387-4d8d-be27-0c3328052c06-1660029573583-51e29624efb9d317933fe2d556bd4318.png",
        height: 170,
        fit: BoxFit.cover,
      ),
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
    // final top = expandedHeight - shrinkOffset - size / 2;

    // print(expandedHeight);
    // print(shrinkOffset);
    final size = MediaQuery.of(context);

    return Stack(
      // clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        buildAppBar(shrinkOffset),
        Positioned(
          top: size.padding.top,
          left: 20,
          right: 20,
          child: searchBar(shrinkOffset),
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
    print((290 + (shrinkOffset * 0.5)));
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
              isDense: true,
              // fillColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black54,
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
          width: (93 - (shrinkOffset * 0.5)) <= 38
              ? 38
              : (93 - (shrinkOffset * 0.5)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                const Icon(
                  Icons.discount,
                  size: 14,
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
