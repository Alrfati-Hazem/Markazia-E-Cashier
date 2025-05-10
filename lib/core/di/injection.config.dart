// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:ecashier/core/bloc/app/app_cubit.dart' as _i527;
import 'package:ecashier/core/bloc/data/data_cubit.dart' as _i594;
import 'package:ecashier/core/di/app_service_model.dart' as _i564;
import 'package:ecashier/core/networks/retrofit_client.dart' as _i319;
import 'package:ecashier/core/routes/app_router.dart' as _i809;
import 'package:ecashier/core/services/app_preferences.dart' as _i354;
import 'package:ecashier/features/auth/data/datasources/auth_remote_data_source.dart'
    as _i190;
import 'package:ecashier/features/auth/data/repositories/auth_repositor_impl.dart'
    as _i478;
import 'package:ecashier/features/auth/domain/repositories/auth_repository.dart'
    as _i1048;
import 'package:ecashier/features/auth/domain/usecases/login_use_case.dart'
    as _i133;
import 'package:ecashier/features/auth/presentation/blocs/auth/auth_cubit.dart'
    as _i366;
import 'package:ecashier/features/branch/data/datasources/branch_remote_data_source.dart'
    as _i477;
import 'package:ecashier/features/branch/data/repositories/branc_repository_impl.dart'
    as _i72;
import 'package:ecashier/features/branch/domain/repositories/branc_repository.dart'
    as _i150;
import 'package:ecashier/features/branch/domain/usecases/get_branch_settings_use_case.dart'
    as _i858;
import 'package:ecashier/features/branch/domain/usecases/get_branches_use_case.dart'
    as _i29;
import 'package:ecashier/features/branch/domain/usecases/update_branch_service_use_case.dart'
    as _i442;
import 'package:ecashier/features/branch/presentation/blocs/branch/branch_cubit.dart'
    as _i246;
import 'package:ecashier/features/branch/presentation/blocs/branch_settings/branch_settings_cubit.dart'
    as _i746;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appServiceModel = _$AppServiceModel();
    gh.factory<_i527.AppCubit>(() => _i527.AppCubit());
    await gh.factoryAsync<_i460.SharedPreferencesWithCache>(
      () => appServiceModel.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i594.DataCubit>(() => _i594.DataCubit());
    gh.lazySingleton<_i809.AppRouter>(() => appServiceModel.appRouter);
    gh.lazySingleton<_i361.Dio>(() => appServiceModel.dio);
    gh.lazySingleton<_i319.RetrofitClient>(
      () => appServiceModel.retrofitClient,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => appServiceModel.secureStorage,
    );
    gh.lazySingleton<_i477.BranchRemoteDataSource>(
      () => _i477.BranchRemoteDataSourceImp(
        retrofitClient: gh<_i319.RetrofitClient>(),
      ),
    );
    gh.lazySingleton<_i150.BrancRepository>(
      () => _i72.BrancRepositoryImpl(gh<_i477.BranchRemoteDataSource>()),
    );
    gh.lazySingleton<_i190.AuthRemoteDataSource>(
      () => _i190.AuthRemoteDataSourceImp(
        retrofitClient: gh<_i319.RetrofitClient>(),
      ),
    );
    gh.lazySingleton<_i354.AppPreferences>(
      () => _i354.AppPreferences(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i29.GetBranchesUseCase>(
      () => _i29.GetBranchesUseCase(gh<_i150.BrancRepository>()),
    );
    gh.lazySingleton<_i858.GetBranchSettingsUseCase>(
      () => _i858.GetBranchSettingsUseCase(gh<_i150.BrancRepository>()),
    );
    gh.lazySingleton<_i442.UpdateBranchServiceUseCase>(
      () => _i442.UpdateBranchServiceUseCase(gh<_i150.BrancRepository>()),
    );
    gh.lazySingleton<_i1048.AuthRepository>(
      () => _i478.AuthRepositoryImpl(gh<_i190.AuthRemoteDataSource>()),
    );
    gh.lazySingleton<_i133.LoginUseCase>(
      () => _i133.LoginUseCase(gh<_i1048.AuthRepository>()),
    );
    gh.factory<_i366.AuthCubit>(
      () =>
          _i366.AuthCubit(gh<_i133.LoginUseCase>(), gh<_i354.AppPreferences>()),
    );
    gh.factory<_i746.BranchSettingsCubit>(
      () => _i746.BranchSettingsCubit(
        gh<_i858.GetBranchSettingsUseCase>(),
        gh<_i442.UpdateBranchServiceUseCase>(),
      ),
    );
    gh.factory<_i246.BranchCubit>(
      () => _i246.BranchCubit(gh<_i29.GetBranchesUseCase>()),
    );
    return this;
  }
}

class _$AppServiceModel extends _i564.AppServiceModel {}
