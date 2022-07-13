import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.img, required this.productType})
      : super(key: key);
  String img;
  String productType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.d3),
              topRight: Radius.circular(Dimensions.d3))),
      width: Dimensions.d35,
      height: Dimensions.d35,
      child: Column(
        children: [
          Flexible(
            flex: 5,
            child: Container(
              width: Dimensions.d35,
              height: Dimensions.d35,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(Dimensions.d3)),
              child: Image.asset(img),
            ),
          ),
          SizedBox(
            height: Dimensions.d2,
          ),
          Flexible(
            flex: 2,
            child: Container(
              width: Dimensions.d35,
              height: Dimensions.d40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.d3)),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  productType,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Dimensions.d4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}