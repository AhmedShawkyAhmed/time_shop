import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/screens/item_product.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/default_search_field.dart';
import 'package:time_shop/widgets/drawer.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        title: const Text(
          'Category Name',
          style: TextStyle(
            fontSize: 25,
            color: AppColors.white,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5.h),
          child: DefaultSearchField(
            controller: search,
            hintText: 'Search',
            onTap: () {},
            height: 5.h,
            width: 80.w,
          ),
        ),
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
      drawer: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: const DefaultDrawer(),
      ),
      drawerScrimColor: AppColors.black.withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          flex: 1,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1 / 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: 50,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                width: 22.w,
                height: 22.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColors.dray,
                    width: 3,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemProductScreen(),
                        ),
                      ),
                      child: Image.asset(
                        'assets/icons/1612.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 6,
                        top: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
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
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.add_shopping_cart_rounded,
                              color: AppColors.purple,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
