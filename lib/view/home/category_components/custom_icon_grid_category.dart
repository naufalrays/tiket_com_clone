// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomIconGridCategory extends StatelessWidget {
  const CustomIconGridCategory({
    Key? key,
    required this.nameAssetTop,
    required this.nameTop,
    required this.nameAssetBottom,
    required this.nameBottom,
  }) : super(key: key);
  final String nameAssetTop;
  final String nameTop;
  final String nameAssetBottom;
  final String nameBottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 82,
          width: 76,
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  nameAssetTop,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                nameTop,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 82,
          width: 65,
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  nameAssetBottom,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                nameBottom,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
