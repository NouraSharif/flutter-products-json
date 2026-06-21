import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final double price;
  const ProductPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Row(
        children: [
          Text(
            'EGP $price',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          SizedBox(width: 10),
          Text(
            "EGP 2000",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 11,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}
