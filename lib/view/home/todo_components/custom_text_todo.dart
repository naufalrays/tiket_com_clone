// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:tiket_com_clone/models/todo_card_models.dart';

class CustomTextTodo extends StatelessWidget {
  const CustomTextTodo({
    Key? key,
    required this.data,
  }) : super(key: key);
  final TodoCardModels data;

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
                Text(
                  data.header,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  data.location,
                  style: const TextStyle(color: Colors.black87, fontSize: 10),
                ),
                const SizedBox(
                  height: 6,
                ),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                      children: [
                        TextSpan(
                            text: data.rating,
                            style:
                                const TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: "/5 (${data.review} Review)",
                            style: const TextStyle(color: Colors.black87))
                      ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: data.normalPrice != null,
                    child: Text(
                      "IDR ${data.normalPrice}",
                      style: const TextStyle(
                        // color: Colors.black.withOpacity(
                        //   0.2,
                        // ),
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
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
