import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/screens/cart.dart';
import 'package:time_shop/screens/category.dart';
import 'package:time_shop/screens/login.dart';
import 'package:time_shop/screens/my_orders.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/drawer_row.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.darkGray,
      child: ListView(
        children: [
          Center(
            child: SizedBox(
              width: 60.w,
              height: 10.h,
              child: Image.asset('assets/icons/user.png'),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          const Center(
            child: Text(
              'User Name',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 20
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          DrawerRow(
            title: 'Home',
            image: 'assets/icons/home.png',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryScreen(),
                ),
              );
            },
          ),
          DrawerRow(
            title: 'Shopping Cart',
            image: 'assets/icons/cart.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
          ),
          DrawerRow(
            title: 'My Orders',
            image: 'assets/icons/basket.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyOrdersScreen(),
                ),
              );
            },
          ),
          DrawerRow(
            title: 'Logout',
            image: 'assets/icons/logout.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
