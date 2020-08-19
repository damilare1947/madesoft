import 'package:flutter/material.dart';

class ProductService with ChangeNotifier {
  final String image;
  final String text;
  ProductService(this.image, this.text);
}

class ProductServices with ChangeNotifier {
  List<ProductService> _product = [
    ProductService('images/sales.png', 'Sales Register'),
    ProductService('images/products.png', 'Product/Service'),
    ProductService('images/smss.png', 'SMS'),
    ProductService('images/sales2.png', 'Notifications'),
    ProductService('images/reports.png', 'Reports'),
    ProductService('images/sales2.png', 'Sales'),
    ProductService('images/staffs.png', 'Staffs'),
    ProductService('images/expense.png', 'Expenses'),
    ProductService('images/customer.png', 'Customers'),
    ProductService('images/offline.png', 'Offline Sales'),
    ProductService('images/pays.png', 'Payments'),
    ProductService('images/settings.png', 'Setting'),
    ProductService('images/suppliers.png', 'Suppliers'),
    ProductService('images/bugets.png', 'Calculator'),
  ];

  List<ProductService> get products {
    return [..._product];
  }
}
