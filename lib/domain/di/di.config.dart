// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/Api_Services.dart' as _i933;
import '../../data/data_source/remote_data_source/product_remote_datasoruceImpl.dart'
    as _i213;
import '../../data/data_source/remote_data_source/product_remote_datasource.dart'
    as _i264;
import '../../data/repoistory/product_repositoryimpl.dart' as _i407;
import '../../ui/Home/Cubit/ProductCubit.dart' as _i198;
import '../repoistory/product_repository.dart' as _i723;
import '../use_case/product_usecase.dart' as _i810;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i933.ApiServices>(() => _i933.ApiServices());
    gh.factory<_i264.productRemote>(
        () => _i213.ProductRemoteImpl(apiServices: gh<_i933.ApiServices>()));
    gh.factory<_i723.productRepoistory>(
        () => _i407.productRepositoryimpl(get: gh<_i264.productRemote>()));
    gh.factory<_i810.productusecase>(
        () => _i810.productusecase(repo: gh<_i723.productRepoistory>()));
    gh.factory<_i198.ProductCubit>(
        () => _i198.ProductCubit(Productusecase: gh<_i810.productusecase>()));
    return this;
  }
}
