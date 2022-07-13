import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class OrderProductCard extends StatelessWidget {
  OrderProductCard(
      {Key? key, required this.orderProductModel, required this.callback})
      : super(key: key);
  OrderProductModel orderProductModel;
  Callback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: Dimensions.d3,
          ),
          Row(
            children: [
              SizedBox(
                height: Dimensions.d20,
                width: Dimensions.d20,
                child: Image.network(orderProductModel.image),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderProductModel.header,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimensions.d4),
                    ),
                    SizedBox(
                      height: Dimensions.d2,
                    ),
                    Text(
                      orderProductModel.subText,
                      style: TextStyle(fontSize: Dimensions.d3),
                    ),
                    SizedBox(
                      height: Dimensions.d2,
                    ),
                    Row(
                      children: [
                        Text(
                          'MRP ${orderProductModel.price}',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: Dimensions.d4),
                        ),
                        SizedBox(
                          width: Dimensions.d20,
                        ),
                        InkWell(
                          onTap: callback,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Dimensions.d2,
                                ),
                                border: Border.all(color: Colors.black12)),
                            child: Padding(
                              padding: EdgeInsets.all(Dimensions.d3),
                              child: Text('Add to Cart',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.d4)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.d4,
          ),
          const Divider(
            color: Colors.black12,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}