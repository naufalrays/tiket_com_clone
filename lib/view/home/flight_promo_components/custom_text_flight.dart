// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiket_com_clone/models/flight_card_models.dart';

class CustomTextFlight extends StatelessWidget {
  const CustomTextFlight({
    Key? key,
    required this.data,
  }) : super(key: key);
  final TodoFlightModels data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.5),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          "${data.starting} ",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Icon(
                        data.arrivalDate == null
                            ? CupertinoIcons.arrow_right
                            : CupertinoIcons.arrow_right_arrow_left,
                        size: 10,
                      ),
                      Flexible(
                        child: Text(
                          " ${data.destination}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      data.departureDate,
                      style:
                          const TextStyle(color: Colors.black87, fontSize: 10),
                    ),
                    Visibility(
                      visible: data.arrivalDate != null,
                      child: Text(
                        " - ${data.arrivalDate}",
                        style: const TextStyle(
                            color: Colors.black87, fontSize: 10),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                      height: 10,
                      child: Image.asset(
                        data.planeImages,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      data.plane,
                      style:
                          const TextStyle(color: Colors.black87, fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  data.planeClass,
                  style: const TextStyle(color: Colors.black87, fontSize: 10),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mulai dari",
                    style: TextStyle(
                      // color: Colors.black.withOpacity(
                      //   0.2,
                      // ),
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "IDR ${data.discountPrice}",
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
