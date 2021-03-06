
import 'package:flutter/material.dart';
import 'package:flutter_catalog/model/product.dart';
import 'package:flutter_catalog/model/product_repository.dart';

class MockProductsRepository extends ProductsRepository {

  List<Product> _products = [];

  MockProductsRepository() {
    _products.add(Product('1', 'Product 1', 'Description of product 1', 9.90, 'CHF', Icon(Icons.ac_unit)));
    _products.add(Product('2', 'Product 2', 'Description of product 2', 30.0, 'CHF', Icon(Icons.accessibility)));
    _products.add(Product('3', 'Product 3', 'Description of product 3', 103.20, 'CHF', Icon(Icons.backup)));
    _products.add(Product('4', 'Product 4', 'Description of product 4', 2.0, 'CHF', Icon(Icons.cake)));
    _products.add(Product('5', 'Product 5', 'Description of product 5', 0.55, 'CHF', Icon(Icons.dashboard)));
  }

  Future<List<Product>> loadProducts() async {
    await Future.delayed(const Duration(seconds: 3));
    return _products;
  }

}