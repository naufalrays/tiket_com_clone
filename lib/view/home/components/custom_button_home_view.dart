// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButtonHomeView extends StatelessWidget {
  CustomButtonHomeView({
    Key? key,
    required this.textButton,
    this.padding,
  }) : super(key: key);
  final String textButton;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry defaultPadding = const EdgeInsets.fromLTRB(24, 10, 24, 18);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? defaultPadding,
      child: SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              elevation: 0,
              backgroundColor: const Color(0xffe7f2ff)),
          onPressed: () {},
          child: Text(
            textButton,
            style: const TextStyle(
                color: Color(0xff007cff), fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
