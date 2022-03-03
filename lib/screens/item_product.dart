import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/default_app_button.dart';

class ItemProductScreen extends StatefulWidget {
  const ItemProductScreen({Key? key}) : super(key: key);

  @override
  State<ItemProductScreen> createState() => _ItemProductScreenState();
}

class _ItemProductScreenState extends State<ItemProductScreen> {
  int count = 0;

  void add() {
    setState(() {
      count++;
    });
  }

  void sub() {
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        title: const Text(
          'Time Shop',
          style: TextStyle(
            fontSize: 25,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              textDirection: TextDirection.rtl,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 100.w,
            height: 35.h,
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )
            ),
            child: Image.asset(
                'assets/icons/16.png',
              height: 30.h,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 80.w,
            height: 30.h,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Product Name',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const Text(
                  'Product Price',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: add,
                      child: Container(
                        width: 10.w,
                        height: 10.w,
                        decoration: BoxDecoration(
                          color: AppColors.purple,
                          borderRadius:
                          BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Text(
                      count.toString(),
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    InkWell(
                      onTap: sub,
                      child: Container(
                        width: 10.w,
                        height: 10.w,
                        decoration: BoxDecoration(
                          color: AppColors.purple,
                          borderRadius:
                          BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: DefaultAppButton(
                    text: 'Add to Cart',
                    backGround: AppColors.purple,
                    fontSize: 30,
                    height: 7.h,
                    onTap: () {},
                    width: 60.w,
                    textColor: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
