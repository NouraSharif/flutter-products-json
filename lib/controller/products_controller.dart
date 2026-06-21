import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:taskelevate/data/model/products_model.dart';

class ProductsController extends GetxController {
  List<ProductsModel> dataproducts = [];

  Future<void> getProducts() async {
    dataproducts.clear();
    final response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );
    List data = jsonDecode(response.body);
    dataproducts = data.map((e) => ProductsModel.fromJson(e)).toList();
    update();
  }

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }
}
