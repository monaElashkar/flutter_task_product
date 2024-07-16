// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/api/api_manager.dart' as _i3;
import 'feature/products/data/data_sourse/get_products_ds.dart' as _i4;
import 'feature/products/data/data_sourse/get_products_ds_impl.dart' as _i5;
import 'feature/products/data/repositories/get_products_repo_impl.dart' as _i7;
import 'feature/products/domain/repositories/get_products_repo.dart' as _i6;
import 'feature/products/domain/use_case/get_products_use_case.dart' as _i8;
import 'feature/products/presentation/bloc/products_bloc.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.GetProductsDs>(
        () => _i5.GetProductsDsImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.GetProductsRepo>(
        () => _i7.GetProductsRepoImpl(gh<_i4.GetProductsDs>()));
    gh.factory<_i8.GetProductsUseCase>(
        () => _i8.GetProductsUseCase(gh<_i6.GetProductsRepo>()));
    gh.factory<_i9.ProductsBloc>(
        () => _i9.ProductsBloc(gh<_i8.GetProductsUseCase>()));
    return this;
  }
}
