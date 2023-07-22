import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spare_parts/screens/details/widgets/product_details.dart';
import 'package:spare_parts/screens/home/widgets/products.dart';

class SparePart extends StatelessWidget {
  const SparePart({super.key});

  @override
  Widget build(BuildContext context) {
    const productList = [
      ProductDetail(
        productName: "Belt Tightener Assembly",
        productPrice: "₦ 34,800",
        imageUrl: "assets/images/BeltTightening.png",
        iconImageUrl: "assets/images/add-cart.png",
        cardColor: "0xffFDF6E8",
        sparePartType: "Engine",
        descriptionList:
            "Specially designed & precisely manufactured engine parts to enhance the life mahindra empower engine and better fuel efficiency.",
      ),
      ProductDetail(
        productName: "Ball Joint M10 RH",
        productPrice: "₦ 45,000",
        imageUrl: "assets/images/BallJoint.png",
        iconImageUrl: "assets/image>s/add-cart.png",
        cardColor: "0xffFFE1D6",
        sparePartType: "Gear Mechanism",
        descriptionList:
            "Ball joints of your front suspension provide pivoting movement between the steering knuckles and control arms to provide a safe and smooth ride.",
      ),
      ProductDetail(
        productName: "Belt Tightener Assembly",
        productPrice: "₦ 48,000",
        imageUrl: "assets/images/BeltTightening.png",
        iconImageUrl: "assets/images/add-cart.png",
        cardColor: "0xffD6FFEB",
        sparePartType: "Engine",
        descriptionList:
            "Specially designed & precisely manufactured engine parts to enhance the life mahindra empower engine and better fuel efficiency. ",
      ),
      ProductDetail(
        productName: "Ball Joint M10 RH",
        productPrice: "₦ 50,000",
        imageUrl: "assets/images/BallJoint.png",
        iconImageUrl: "assets/images/add-cart.png",
        cardColor: "0xffdbd6ff",
        sparePartType: "Gear Mechanism",
        descriptionList:
            " Ball joints of your front suspension provide pivoting movement between the steering knuckles and control arms to provide a safe and smooth ride.",
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'spare parts',
          style: TextStyle(
            fontFamily: 'Gotham',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleTextStyle: const TextStyle(color: Color(0xff453885)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/svgs/filter.svg',
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/search1.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/cart.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/bookmark.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/user.svg',
                height: 24,
                width: 24,
              ),
              label: "",
            ),
          ]),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF7F7F7),
                //  fillColor: Color.fromRGBO(247, 247, 247, 1),
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide.none),
                hintText: 'Type here to search',
                hintStyle: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(0, 0, 0, 0.2)),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                children: const [
                  Products(
                    productName: "Volvo",
                    imageUrl: 'assets/images/volvo.png',
                  ),
                  Products(
                    productName: "Volvo FMX",
                    imageUrl: 'assets/images/volvofmx.png',
                  ),
                  Products(
                    productName: "Volvo Trucks",
                    imageUrl: 'assets/images/volvo.png',
                  ),
                  Products(
                    productName: "Ashok",
                    imageUrl: 'assets/images/volvofmx.png',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: productList,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
