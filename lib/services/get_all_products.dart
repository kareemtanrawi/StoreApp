import 'package:storeapp/Models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:storeapp/helper/api.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
