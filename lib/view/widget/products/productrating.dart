import 'package:flutter/material.dart';
import 'package:taskelevate/data/model/products_model.dart';

class ProductRating extends StatelessWidget {
  final Rating rating;
  const ProductRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Review ${rating.rate}) ⭐',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),

          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
