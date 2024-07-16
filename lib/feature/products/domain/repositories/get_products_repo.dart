import 'package:dartz/dartz.dart';
import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/feature/products/data/models/product_model.dart';

abstract class GetProductsRepo{
  Future<Either<Failures,ProductsModel>> getProducts();
}