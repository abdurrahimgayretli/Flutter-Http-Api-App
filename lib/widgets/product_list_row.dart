// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  Product product;
  ProductListRowWidget(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
          child: Column(
        children: [
          SizedBox(
            child: Image.network(
                'https://productimages.hepsiburada.net/s/40/1500/10650895351858.jpg'),
            height: 130.0,
            width: MediaQuery.of(context).size.width / 2,
          ),
          Text(
            product.productName!,
            style: const TextStyle(color: Colors.blue),
          ),
          Text(
            product.unitPrice!.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          )
        ],
      )),
    );
  }
}
