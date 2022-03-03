import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/default_app_button.dart';
import 'package:time_shop/widgets/drawer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
        appBar: AppBar(
          backgroundColor: AppColors.purple,
          title: const Text(
            'Shopping Cart',
            style: TextStyle(
              fontSize: 25,
              color: AppColors.white,
            ),
          ),
          centerTitle: true,
        ),
        drawer: Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: const DefaultDrawer(),
        ),
        drawerScrimColor: AppColors.black.withOpacity(0.2),
        body: Column(
          children: [
            SizedBox(
              width: 100.w,
              height: 75.h,
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 100.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.darkGray,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 2.w,
                          ),
                          Image.asset(
                            'assets/icons/1612.png',
                            width: 20.w,
                            height: 20.w,
                          ),
                          SizedBox(
                            width: 1.5.w,
                          ),
                          SizedBox(
                            width: 60.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Product Name',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  'Product Price',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: add,
                                      child: Container(
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
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.h,
                                    ),
                                    InkWell(
                                      onTap: sub,
                                      child: Container(
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
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.restore_from_trash_rounded,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: DefaultAppButton(
                text: 'Finish Order',
                backGround: AppColors.purple,
                fontSize: 30,
                height: 7.h,
                onTap: () {},
                width: 60.w,
                textColor: AppColors.white,
              ),
            ),
          ],
        ));
  }
}
