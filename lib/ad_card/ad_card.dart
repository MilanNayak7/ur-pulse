import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../common/card/common_card.dart';
import '../data_model/data_model.dart';

class OrderScreenAdvertisementCard extends StatelessWidget {
  const OrderScreenAdvertisementCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          // color: Colors.yellow,
          borderRadius: BorderRadius.circular(Dimensions.d3)),
      height: Dimensions.d40,
      child: Padding(
        padding: EdgeInsets.all(Dimensions.d2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Upto 25% Off On Essential Medicines",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: Dimensions.d5),
                  ),
                  SizedBox(
                    height: Dimensions.d3,
                  ),
                  Text(
                    "Delivered to your doorstep",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: Dimensions.d4),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Search Medicines",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Dimensions.d4),
                      ))
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: Image.asset(
                  "assets/ad/medkit.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderScreenAdvertisement2 extends StatelessWidget {
  const OrderScreenAdvertisement2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.d60,
      color: Colors.indigo,
      child: Padding(
        padding: EdgeInsets.all(Dimensions.d5),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.d2)),
          child: Padding(
            padding: EdgeInsets.all(Dimensions.d2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Flat",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.d5),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("10 % ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Dimensions.d10)),
                            Text("OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Dimensions.d5))
                          ],
                        ),
                        Text("On Women Care Products",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: Dimensions.d4)),
                        Text(
                            "This offer is applicable only for a minimum purchase of Rs. 1199",
                            style: TextStyle(fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    child: Image.asset(
                      "assets/images/mobile.png",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PractoShowOffCard extends StatelessWidget {
  PractoShowOffCard(
      {Key? key, required this.text, required this.showOffCardModel})
      : super(key: key);
  String text;
  List<ShowOffCardModel> showOffCardModel = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:Dimensions.dh120,
      color: Colors.blueGrey[100],
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: Dimensions.d8, right: Dimensions.d8),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: Dimensions.d8, bottom: Dimensions.d8),
              child: Text(
                text,
                style: TextStyle(fontSize: Dimensions.d6),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: Dimensions.d11,
                runSpacing: Dimensions.d8,
                children: List<Widget>.generate(4, (index) {
                  return PractoDataWidget(
                    showOffCardModel: showOffCardModel[index],
                  );
                }),
              ),
            ),
            SizedBox(
              height: Dimensions.d8,
            )
          ],
        ),
      ),
    );
  }
}
