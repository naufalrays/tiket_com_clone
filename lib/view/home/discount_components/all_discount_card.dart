// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tiket_com_clone/view_models.dart/home_view_models.dart';

class AllDiscountCard extends StatelessWidget {
  AllDiscountCard({
    Key? key,
    required this.dataSequence,
  }) : super(key: key);
  final int dataSequence;
  late List<dynamic> data;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final dataProvider = Provider.of<HomeViewModels>(context, listen: false);
    if (dataSequence == 0) {
      data = dataProvider.allDiscountData;
    } else if (dataSequence == 1) {
      data = dataProvider.airplaneDiscountData;
    } else if (dataSequence == 2) {
      data = dataProvider.hotelDiscountData;
    } else if (dataSequence == 3) {
      data = dataProvider.villaDiscountData;
    } else if (dataSequence == 4) {
      data = dataProvider.todoDiscountData;
    } else if (dataSequence == 5) {
      data = dataProvider.trainDiscountData;
    } else if (dataSequence == 6) {
      data = dataProvider.rentCarDiscountData;
    } else if (dataSequence == 7) {
      data = dataProvider.airportPickUpDiscountData;
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          data.length,
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
                height: 175,
                width: size.width - 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  data[index],
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Visibility(
                visible: index == data.length - 1,
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
