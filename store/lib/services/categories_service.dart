import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getcategoriesproducts(String categoryname) async {
    List<dynamic> data = await Api().get(
      url: "https://fakestoreapi.com/products/category/$categoryname",
    );

    List<ProductModel> productslist = [];
    for (int i = 0; i < data.length; i++) {
      productslist.add(ProductModel.fromjson(data[i]));
    }
    return productslist;
  }
}
