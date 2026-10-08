import 'package:store/models/product_model.dart';
import "package:store/helper/api.dart";

class AllProductsservices {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: "https://fakestoreapi.com/products",
    );
    List<ProductModel> productslist = [];
    for (int i = 0; i < data.length; i++) {
      productslist.add(ProductModel.fromjson(data[i]));
    }
    return productslist;
  }
}
