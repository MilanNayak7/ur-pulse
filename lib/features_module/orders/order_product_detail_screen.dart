import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ur_pulse_modified/features_module/orders/cart_screen.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../../common/app_bar/app_bar_action_widget.dart';
import '../../data_model/data_model.dart';

class OrderProductDetailScreen extends StatelessWidget {
  OrderProductDetailScreen({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        actionWidgets: appBarShareCartWidgets,
        addBackButton: true,
        appBarTitle: '',
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              child: Text(
                "Delivery to bbsr",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.d2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    orderProductData[index].image,
                    height: Dimensions.d75,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: Dimensions.d10,
                  ),
                  Text(
                    orderProductData[index].header,
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: Dimensions.d5),
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                  Text(
                    orderProductData[index].subText,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: Dimensions.d3),
                  ),
                  SizedBox(
                    height: Dimensions.d5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rs. ${orderProductData[index].price}',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: Dimensions.d5),
                          ),
                          Text(
                            'Inclusive of all taxes',
                            style: TextStyle(fontSize: Dimensions.d3),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap:(){
                          Get.to(CartScreen(index:index));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.d2)),
                            child: Padding(
                              padding: EdgeInsets.all(Dimensions.d3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: Dimensions.d4),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d5,
                  ),
                ],
              ),
            ),
            Divider(
              height: Dimensions.d2,
              color: Colors.black12,
              thickness: Dimensions.d2,
            ),
            SizedBox(
              height: Dimensions.d5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.d2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Information",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: Dimensions.d5),
                  ),
                  SizedBox(
                    height: Dimensions.d5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Manufacturer",
                        style: TextStyle(fontSize: Dimensions.d4),
                      ),
                      Text(
                        orderProductData[index].subText,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: Dimensions.d4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.d5,
            ),
            Divider(
              height: Dimensions.d2,
              color: Colors.black12,
              thickness: Dimensions.d2,
            ),
            SizedBox(
              height: Dimensions.d3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.d2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text("Know More"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Text(
                    orderProductData[index].header,
                    style: TextStyle(fontSize: Dimensions.d4),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.d5,
            ),
            Divider(
              height: Dimensions.d2,
              color: Colors.black12,
              thickness: Dimensions.d2,
            ),
            SizedBox(
              height: Dimensions.d3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.d2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Return Policy",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                  Text(
                    "This item is not returnable",
                    style: TextStyle(fontSize: Dimensions.d4),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.d5,
            ),
            Divider(
              height: Dimensions.d2,
              color: Colors.black12,
              thickness: Dimensions.d2,
            ),
            SizedBox(
              height: Dimensions.d3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.d2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Return Policy",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                  Text(
                    "We've made all possible efforts to ensure that the information provided here is accurate, up-to-date and complete, however it should not be treated as a substitute for professional medical",
                    style: TextStyle(fontSize: Dimensions.d4),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.d5,
            ),
            Divider(
              height: Dimensions.d2,
              color: Colors.black12,
              thickness: Dimensions.d2,
            ),
            SizedBox(
              height: Dimensions.d3,
            ),
          ]))
        ],
      ),
    );
  }
}
