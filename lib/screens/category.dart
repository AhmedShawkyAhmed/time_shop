import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/screens/products.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/default_search_field.dart';
import 'package:time_shop/widgets/drawer.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        title: const Text(
          'Home',
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
      ),
      drawer: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: const DefaultDrawer(),
      ),
      drawerScrimColor: AppColors.black.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: true,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, int itemIndex, int realIndex) =>
                        Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Image.asset(
                    'assets/icons/2.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Categories',
                style: TextStyle(color: AppColors.black, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 44.h,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 120,
                      childAspectRatio: 1 / 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: 50,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          InkWell(
                            child: Container(
                              width: 22.w,
                              height: 22.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: AppColors.dray,
                                    width: 3,
                                  )),
                              child: Image.asset(
                                'assets/icons/1612.png',
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductsScreen(),
                              ),
                            ),
                          ),
                          const Text('Item'),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
