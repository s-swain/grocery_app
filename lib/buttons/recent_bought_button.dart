import 'package:flutter/material.dart';

class RecentButtons extends StatelessWidget {
  final String buttonImage;
  final String buttonName;
  final String groceryAmount;
  final String groceryPrice;
  // ignore: use_key_in_widget_constructors
  const RecentButtons({
    required this.buttonImage,
    required this.buttonName,
    required this.groceryAmount,
    required this.groceryPrice,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      constraints: const BoxConstraints.tightFor(
        width: 250.0,
      ),
      fillColor: const Color(0xFFF5F5F5),
      focusColor: Colors.black,
      focusElevation: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage(buttonImage),
            height: 100.0,
            width: 80.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                buttonName,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0,
                ),
              ),
              Text(
                groceryAmount,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
              Text(
                groceryPrice,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
