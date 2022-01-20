import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'image_and_icon.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(size: size),
          const TitleAndPrice(
            title: "Angel",
            country: "Russia",
            price: 350,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: size.width / 2,
                  height: 84,
                  child: const Text(
                    "Buy  Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Description",
                  style: TextStyle(color: Colors.black),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
