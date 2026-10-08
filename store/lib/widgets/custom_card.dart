import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/update_product.dart';

class customcard extends StatelessWidget {
  const customcard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductpage.id, arguments: product);
      },
      child: Stack(
        children: [
          Container(
            width: 170,
            height: 170,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2.0,
                    ),
                    child: Text(
                      product.title.substring(0, 6),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${product.price}'),
                        Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Image.network(product.image),
            width: 100,
            height: 85,
            left: 50,
            top: 20,
          ),
        ],
      ),
    );
  }
}
