import 'package:clothes/Common/Common.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  //back button and cart button at top
  Widget topSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Container(
            height: 50,
            width: 50,
            child: Icon(
              Icons.arrow_back,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(1, 0),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0.5, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        InkWell(
          child: Container(
            height: 50,
            width: 50,
            child: Icon(
              Icons.shopping_cart_outlined,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(1, 0),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0.5, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  //Rounded color select
  Widget colorSelect(Color? color, Color? colorCenter) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: color,
        ),
        CircleAvatar(
          radius: 17,
          backgroundColor: colorCenter,
        ),
      ],
    );
  }

  Widget productName() {
    return Column(
      children: [
        Text(
          "Kenzo Embrodried",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
        ),
        Text(
          "Sweater",
          style: TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  //image and size select
  Widget productImage() {
    return Row(
      children: [
        Expanded(child: Image.asset("assets/hoodie.png")),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "S",
                style: size,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "M",
                style: size,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.deepOrangeAccent[200],
                  ),
                  Text(
                    "L",
                    style: size.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "XL",
                style: size,
              ),
            ),
          ],
        ),
      ],
    );
  }

  //price & Add to cart button
  Widget bottomSection() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: size,
              ),
              Text(
                "\$19.99",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return color ?? primaryColor;
                  return primaryColor; // Use the component's default.
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.only(top: 15, bottom: 15, right: 25, left: 15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.2),
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              topSection(),
              productName(),
              productImage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  colorSelect(Colors.blue[200], Colors.white),
                  colorSelect(Colors.deepOrange[400], Colors.transparent),
                  colorSelect(Colors.yellow[400], Colors.white),
                  colorSelect(Colors.deepPurpleAccent[200], Colors.white),
                ],
              ),
              bottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
