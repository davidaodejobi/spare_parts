import 'package:flutter/material.dart';
import 'package:spare_parts/screens/detail_screen.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.imageUrl,
    required this.iconImageUrl,
    required this.cardColor,
    required this.sparePartType,
    required this.descriptionList,
  });

  final String productName;
  final String imageUrl;
  final String productPrice;
  final String iconImageUrl;
  final String cardColor;
  final String sparePartType;
  final String descriptionList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        // print(productName),
        //  print(context),
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              productDetail: ProductDetail(
                productName: productName,
                productPrice: productPrice,
                imageUrl: imageUrl,
                iconImageUrl: iconImageUrl,
                cardColor: cardColor,
                sparePartType: sparePartType,
                descriptionList: descriptionList,
              ),
            ),
          ),
        )
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: SizedBox(
          height: 230,
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13))),
            color: Color(int.parse(cardColor)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 10.0, right: 10.0, bottom: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Expanded(
                              child: Text(
                            productName,
                            style: const TextStyle(
                                height: 1.1,
                                fontSize: 23.0,
                                fontWeight: FontWeight.w300),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Type',
                                style: TextStyle(
                                    color: Color(0xff9A9A9A),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                              Text(
                                sparePartType,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              productPrice,
                              style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            Image(
                              image: AssetImage(iconImageUrl),
                              width: 25.0,
                              height: 25.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Image(
                    image: AssetImage(imageUrl),
                  )),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 120.0,
                    ),
                    child: Image(
                      image: AssetImage("assets/images/bookmark-white.png"),
                      width: 15.0,
                      height: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
