import '../Models/product_model.dart';
import '../helper/api.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String decs,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': decs,
      'image': image,
      'category': category,
    });
    return ProductModel.fromJson(data);
  }
}
