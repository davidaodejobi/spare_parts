import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.productName,
    required this.imageUrl,
  });

  final String productName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Card(
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.7),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(13))),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, top: 30.0, right: 5.0, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(imageUrl),
                ),
                Text(
                  productName,
                  style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2)),
                ),
                const Icon(Icons.keyboard_arrow_down,
                    color: Color.fromRGBO(0, 0, 0, 0.2)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
