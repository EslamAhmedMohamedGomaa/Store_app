import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class UpdateProductservise {
  static get id2 => null;

  Future<ProductModel> updateprodu({
    required String title,
    required double price,
    required String description,
    required String image,
    String? category,
    required int id,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products/",
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
    );

    return ProductModel.fromjson(data);
  }
}
