import 'package:dartz/dartz.dart';

import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/feature/products/data/data_sourse/get_products_ds.dart';

import 'package:flutter_task/feature/products/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/get_products_repo.dart';
@Injectable(as: GetProductsRepo)
class GetProductsRepoImpl implements GetProductsRepo{
  GetProductsDs getProductsDs;
  GetProductsRepoImpl(this.getProductsDs);
  @override
  Future<Either<Failures, ProductsModel>> getProducts() async{
    try {
      var result=await getProductsDs.getProducts();
      return Right(result);
    }catch(e) {
      return Left(RemoteFailure(e.toString()));
    }
  }

}