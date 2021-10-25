import 'package:flutter/material.dart';

class ScrollButtons extends StatelessWidget {
  final String buttonImage;
  final String buttonName;
  final String groceryType;
  final String groceryPrice;
  // ignore: use_key_in_widget_constructors
  const ScrollButtons({
    required this.buttonImage,
    required this.buttonName,
    required this.groceryType,
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
        width: 150.0,
      ),
      fillColor: const Color(0xFFF5F5F5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage(buttonImage),
            height: 80.0,
            width: 80.0,
          ),
          Text(
            buttonName,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 25.0,
            ),
          ),
          Text(
            groceryType,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
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
      ),
    );
  }
}
