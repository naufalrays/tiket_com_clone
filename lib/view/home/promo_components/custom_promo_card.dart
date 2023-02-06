// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:tiket_com_clone/utils/constant.dart';

class CustomPromoCard extends StatelessWidget {
  const CustomPromoCard({
    Key? key,
    required this.asset,
    required this.header,
    required this.text,
  }) : super(key: key);
  final String asset;
  final String header;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          width: 200,
          child: Image.asset(
            asset,
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      backgroundColor: MyColor.primary,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Cek promonya',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
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
}
