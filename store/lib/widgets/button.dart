import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product.dart';

class button extends StatelessWidget {
  button({super.key});
  String? name;
  String? description;
  double? price;
  String? image;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          isLoading = true;
          setState(() {});
          try {
            await updateproduct(product);
            print("Product updated successfully.");
          } catch (e) {
            print(e.toString());
            // TODO
          }
          isLoading = false;
          setState(() {});
        },
        child: const Text(
          "Update Product",
          //  style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Future<void> updateproduct(ProductModel Product) async {
    await UpdateProductservise().updateprodu(
      id: Product.id,
      title: name == null ? Product.title : name!,
      price: price == null ? Product.price.toDouble() : price!,
      description: description == null ? Product.description : description!,
      image: image == null ? Product.image : image!,
    );
  }

  void setState(Null Function() param0) {}
}
