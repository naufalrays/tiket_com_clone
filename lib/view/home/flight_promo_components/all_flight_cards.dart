import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiket_com_clone/models/flight_card_models.dart';
import 'package:tiket_com_clone/view/home/flight_promo_components/custom_text_flight.dart';
import 'package:tiket_com_clone/view_models.dart/home_view_models.dart';

class AllFlightCards extends StatelessWidget {
  AllFlightCards({
    Key? key,
    required this.dataSequence,
  }) : super(key: key);
  final int dataSequence;
  late List<TodoFlightModels>? data;

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HomeViewModels>(context, listen: false);
    if (dataSequence == 0) {
      data = dataProvider.domesticDealsData;
    } else if (dataSequence == 1) {
      data = dataProvider.intlDealsData;
    } else if (dataSequence == 2) {
      data = dataProvider.intlPremiumDealsData;
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          data!.length,
          (index) => Row(
            children: [
              Visibility(
                visible: index == 0,
                child: const SizedBox(
                  width: 24,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 3,
                shadowColor: Colors.white54,
                child: SizedBox(
                  height: 254,
                  width: 182,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 110,
                            width: double.maxFinite,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Image.asset(
                              data![index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextFlight(
                            data: data![index],
                          )

                          // const Text("4.2/5 (13149 Review)"),
                        ],
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              data![index].arrivalDate == null
                                  ? 'SEKALI JALAN'
                                  : "PULANG-PERGI",
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: index == data!.length - 1,
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
