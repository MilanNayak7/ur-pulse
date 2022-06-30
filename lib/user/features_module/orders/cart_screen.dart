import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common/app_bar/common_app_bar.dart';
import '../../../common/card/common_card.dart';
import '../../../common/theme/app_theme.dart';
import '../../data_model/data_model.dart';



class CartScreen extends StatelessWidget {
  CartScreen({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBarTitle: 'My Cart',
        addBackButton: true,
        actionWidgets: const [],
        context: context,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(Dimensions.d2),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.location_pin),
                      Text("Bhubaneswar"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.d1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.add_shopping_cart),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(orderProductData[index].header,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: Dimensions.d4)),
                              SizedBox(
                                width: Dimensions.d1,
                              ),
                              Text(orderProductData[index].subText,
                                  style: TextStyle(fontSize: Dimensions.d3)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'Rs. ${orderProductData[index].price}.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: Dimensions.d4)),
                                  SizedBox(
                                    width: Dimensions.d25,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            'assets/icon/plus.png',
                                            height: Dimensions.d6,
                                          )),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: Dimensions.d5),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            'assets/icon/minus.png',
                                            height: Dimensions.d6,
                                          )),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                  CommonContainerButton(
                    txt: 'Add more items',
                    callback: () {},
                  ),
                  SizedBox(
                    height: Dimensions.d6,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(Dimensions.d3)),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.d3),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "UPTO",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.d4),
                              ),
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "25%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Dimensions.d7),
                                  ),
                                  SizedBox(
                                    width: Dimensions.d2,
                                  ),
                                  Text(
                                    "OFF",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Dimensions.d4),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Text("Get 10% + 15% cashback",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.d4)),
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Text("On health products and medicines",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.d4)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:Dimensions.d2),
            child: Align(
                alignment:Alignment.bottomCenter,
                child: CommonContainerButton(txt: "Checkout", callback: (){Get.toNamed('orderPayment');},)),
          )
          ]))
        ],
      ),
    );
  }
}
