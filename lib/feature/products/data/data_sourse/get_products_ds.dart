import '../models/product_model.dart';

abstract class GetProductsDs{
  Future<ProductsModel>getProducts();
}