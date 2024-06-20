import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tezda/screen/HomePage/advertisement.dart';
import 'package:tezda/screen/HomePage/category.dart';
import 'package:tezda/screen/HomePage/productListScreen.dart';
import 'package:tezda/widgets/color.dart';
import 'package:tezda/widgets/fontStyle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                        Text(
                          "Your Location",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Ub12hp, 270 Allenby Road",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Brand(),
          const Advertisment(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Newly Arrival", style: titleTextStyle,
                    // style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              )
            ],
          ),
          Expanded(child: ProductListScreen())
        ],
      ),
    );
  }
}
