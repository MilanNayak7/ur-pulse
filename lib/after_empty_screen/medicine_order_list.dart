import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../common/app_bar/app_bar_action_widget.dart';
import '../common/card/common_card.dart';
import '../data_model/data_model.dart';
import 'order_product_detail_screen.dart';

class MedicineOrderList extends StatelessWidget {
  const MedicineOrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        addBackButton: true,
        appBarTitle: 'Covid-essentials',
        context: context,
        actionWidgets: appBarBaseActionWidgets,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: Dimensions.d3, right: Dimensions.d3),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                  child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Text("Deliver to - Bhubaneswar"),
              )),
            ),
            const SliverToBoxAdapter(
                child: Divider(
              color: Colors.black,
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All Products",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
                    ),
                    SizedBox(
                      height: Dimensions.d2,
                    ),
                    Text(
                      '147 Products available',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: Dimensions.d3),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((context,index) {
                return OrderProductCard(
                    orderProductModel: orderProductData[index], callback: () {Get.to(OrderProductDetailScreen(index: index,));});
              }, childCount: orderProductData.length),
            ),
          ],
        ),
      ),
    );
  }
}
