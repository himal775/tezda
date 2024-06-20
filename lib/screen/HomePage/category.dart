import 'package:flutter/material.dart';
import 'package:tezda/widgets/fontStyle.dart';

class Brand extends StatefulWidget {
  const Brand({super.key});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                "Brands",
                style: titleTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black12,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black12,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black12,
              )
            ],
          ),
        ],
      ),
    );
  }
}
