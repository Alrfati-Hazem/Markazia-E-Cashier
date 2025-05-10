import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/blocs/auth/auth_cubit.dart';
import '../../features/branch/presentation/blocs/branch/branch_cubit.dart';
import '../bloc/app/app_cubit.dart';
import '../bloc/data/data_cubit.dart';
import '../di/injection.dart';
import '../routes/app_router.dart';
import '../theme/app_theme.dart';

class ECashierApp extends StatelessWidget {
  ECashierApp({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AppCubit>()),
        BlocProvider(create: (context) => getIt<DataCubit>()),
        BlocProvider(create: (context) => getIt<AuthCubit>()),
        BlocProvider(create: (context) => getIt<BranchCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        theme: appTheme,
      ),
    );
  }
}
