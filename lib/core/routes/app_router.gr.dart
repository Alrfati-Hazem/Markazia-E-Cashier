// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:ecashier/features/auth/presentation/pages/login_page.dart'
    as _i5;
import 'package:ecashier/features/branch/presentation/pages/branch_services_page.dart'
    as _i1;
import 'package:ecashier/features/branch/presentation/pages/choose_branch_page.dart'
    as _i2;
import 'package:ecashier/features/branch/presentation/pages/choose_language_page.dart'
    as _i3;
import 'package:ecashier/features/branch/presentation/pages/home_page.dart'
    as _i4;
import 'package:flutter/material.dart' as _i7;

/// generated route for
/// [_i1.BranchServicesPage]
class BranchServicesRoute extends _i6.PageRouteInfo<void> {
  const BranchServicesRoute({List<_i6.PageRouteInfo>? children})
    : super(BranchServicesRoute.name, initialChildren: children);

  static const String name = 'BranchServicesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.BranchServicesPage();
    },
  );
}

/// generated route for
/// [_i2.ChooseBranchPage]
class ChooseBranchRoute extends _i6.PageRouteInfo<ChooseBranchRouteArgs> {
  ChooseBranchRoute({
    _i7.Key? key,
    bool isLoggedIn = false,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         ChooseBranchRoute.name,
         args: ChooseBranchRouteArgs(key: key, isLoggedIn: isLoggedIn),
         initialChildren: children,
       );

  static const String name = 'ChooseBranchRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChooseBranchRouteArgs>(
        orElse: () => const ChooseBranchRouteArgs(),
      );
      return _i2.ChooseBranchPage(key: args.key, isLoggedIn: args.isLoggedIn);
    },
  );
}

class ChooseBranchRouteArgs {
  const ChooseBranchRouteArgs({this.key, this.isLoggedIn = false});

  final _i7.Key? key;

  final bool isLoggedIn;

  @override
  String toString() {
    return 'ChooseBranchRouteArgs{key: $key, isLoggedIn: $isLoggedIn}';
  }
}

/// generated route for
/// [_i3.ChooseLanguagePage]
class ChooseLanguageRoute extends _i6.PageRouteInfo<void> {
  const ChooseLanguageRoute({List<_i6.PageRouteInfo>? children})
    : super(ChooseLanguageRoute.name, initialChildren: children);

  static const String name = 'ChooseLanguageRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChooseLanguagePage();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginPage();
    },
  );
}
