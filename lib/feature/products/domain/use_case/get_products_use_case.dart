import 'package:dartz/dartz.dart';
import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/feature/products/data/models/product_model.dart';
import 'package:flutter_task/feature/products/domain/repositories/get_products_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetProductsUseCase{
  GetProductsRepo getProductsRepo;
  GetProductsUseCase(this.getProductsRepo);

  Future<Either<Failures,ProductsModel>> call()=> getProductsRepo.getProducts();

}