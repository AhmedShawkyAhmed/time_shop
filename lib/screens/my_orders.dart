import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/drawer.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        title: const Text(
          'My Orders',
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
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100.w,
              height: 10.h,
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
                    width: 50.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Product Name',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Product Price',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '4/3/2022',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
