import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/styles/colors.dart';

class DrawerRow extends StatelessWidget {
  String title;
  String image;
  VoidCallback onTap;

  DrawerRow({
    required this.title,
    required this.image,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 100.w,
        height: 9.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.asset(
                image,
                color: AppColors.lightGray,
                height: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.lightGray,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}