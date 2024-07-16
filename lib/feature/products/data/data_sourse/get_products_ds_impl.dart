import 'package:flutter_task/core/api/api_manager.dart';
import 'package:flutter_task/feature/products/data/models/product_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/api/end_points.dart';
import 'get_products_ds.dart';
@Injectable(as: GetProductsDs)
class GetProductsDsImpl implements GetProductsDs{
  ApiManager apiManager;
  GetProductsDsImpl(this.apiManager);
  @override
  Future<ProductsModel> getProducts() async{
    var response=await apiManager.getData(EndPoints.products);
    ProductsModel productsModel=ProductsModel.fromJson(response.data);
    return productsModel;
  }

}
