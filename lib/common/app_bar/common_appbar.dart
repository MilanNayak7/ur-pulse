import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class commonAppBar extends StatefulWidget with PreferredSizeWidget {
   commonAppBar({Key? key,required this.appBarTitle}) : super(key: key);
   String appBarTitle;
  @override
  State<commonAppBar> createState() => _commonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _commonAppBarState extends State<commonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.appBarTitle??''),
      elevation: 0,
      backgroundColor: Colors.greenAccent,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: Dimensions.d3, bottom: Dimensions.d3),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(Dimensions.d1)),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.d1),
              child: Row(
                children: [
                  const Text(
                    "Explore",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: Dimensions.d1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(Dimensions.d1)),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.d1),
                      child: Text('PLUS'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/purse.png',
            width: Dimensions.d6,
            height: Dimensions.d6,
          ),
        )
      ],
    );
  }
}
