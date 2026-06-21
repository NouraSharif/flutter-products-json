import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:taskelevate/controller/products_controller.dart';
import 'package:taskelevate/data/model/products_model.dart';
import 'package:taskelevate/view/widget/products/productimage.dart';
import 'package:taskelevate/view/widget/products/productprice.dart';
import 'package:taskelevate/view/widget/products/productrating.dart';
import 'package:taskelevate/view/widget/products/producttitle.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    ProductsController controller = Get.put(ProductsController());
    return Scaffold(
      body: GetBuilder<ProductsController>(
        builder: (context) => Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: controller.dataproducts.length,
            itemBuilder: (context, i) =>
                CardProductList(data: controller.dataproducts[i]),
          ),
        ),
      ),
    );
  }
}

class CardProductList extends StatelessWidget {
  final ProductsModel data;
  const CardProductList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(flex: 3, child: ProductImage(image: data.image!)),
            SizedBox(height: 5),
            Expanded(child: ProductTitle(title: data.title!)),
            Expanded(child: ProductPrice(price: data.price!)),
            Expanded(child: ProductRating(rating: data.rating!)),
          ],
        ),
      ),
    );
  }
}
