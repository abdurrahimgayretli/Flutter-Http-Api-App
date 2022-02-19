// ignore_for_file: prefer_initializing_formals, must_be_immutable

import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';
import 'package:http_demo/widgets/product_list_row.dart';

class ProductListWidget extends StatefulWidget {
  List<Product>? products = <Product>[];

  ProductListWidget(List<Product> products, {Key? key}) : super(key: key) {
    this.products = products;
  }

  @override
  State<StatefulWidget> createState() {
    return ProductListWidgetState();
  }
}

class ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return buildProductList(context);
  }

  Widget buildProductList(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 500,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(widget.products!.length, (index) {
              return ProductListRowWidget(widget.products![index]);
            }),
          ),
        ),
      ],
    );
  }
}
