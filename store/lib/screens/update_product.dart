import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/models/product_model.dart';
import 'package:store/widgets/button.dart';
import 'package:store/widgets/update_products_tore.dart';

class UpdateProductpage extends StatefulWidget {
  UpdateProductpage({super.key});
  static String id = 'update_product';

  @override
  State<UpdateProductpage> createState() => _UpdateProductpageState();
}

class _UpdateProductpageState extends State<UpdateProductpage> {
  String? name;

  String? description;

  double? price;

  String? image;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(title: const Text("Update Product"), centerTitle: true),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              updateproductstore(
                onchanged: (data) {
                  name = data;
                },
                labelText: "Product Name",
                hintText: " product name",
              ),
              SizedBox(height: 20),
              updateproductstore(
                onchanged: (data) {
                  description = data;
                },
                labelText: "description ",
                hintText: "  description",
              ),
              SizedBox(height: 20),
              updateproductstore(
                onchanged: (data) {
                  price = double.tryParse(data);
                },
                labelText: "price",
                hintText: "  price",
              ),
              SizedBox(height: 20),
              updateproductstore(
                onchanged: (data) {
                  image = data;
                },
                labelText: " image",
                hintText: " image ",
              ),
              SizedBox(height: 20),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
