import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx/src/app/base/cubit/base_cubit.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/navigation/app_navigator_impl.dart';
import 'package:hubx/src/app/navigation/app_router.dart' as ar;
import 'package:hubx/src/app/resource/dimens/app_dimen.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/domain/domain/app_navigator.dart';
import 'package:hubx/src/shared/extensions/context_extension.dart';
import 'package:hubx/src/shared/mixin/log_mixin.dart';
import 'package:provider/provider.dart';

abstract class BaseCubitPageState<T extends StatefulWidget, C extends BaseCubit>
    extends BaseCubitPageStateDelegate<T, C>
    with LogMixin {}

abstract class BaseCubitPageStateDelegate<
  T extends StatefulWidget,
  C extends BaseCubit
>
    extends State<T> {
  late final AppBloc appBloc = context.appBloc;
  late final ar.AppRouter router = ar.router;
  late final AppNavigator navigator = AppNavigatorImpl.instance;

  late final C cubit = (() {
    final maybeCubit = readCubit();
    if (maybeCubit != null) return maybeCubit;
    final created = createCubit()..appBloc = appBloc;
    return created;
  })();

  C createCubit() {
    throw UnimplementedError(
      'Either override createCubit or provide cubit',
    );
  }

  C? readCubit() {
    try {
      return context.read<C>();
    } on Exception {
      return null;
    }
  }

  bool get isAppWidget => false;

  bool get closeBlocOnDispose => true;

  @override
  void dispose() {
    if (closeBlocOnDispose) {
      cubit.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!isAppWidget) {
      AppDimen.of(context);
      AppColors.of(context);
    }

    return Provider(
      create: (context) => navigator,
      child: BlocProvider.value(
        value: cubit,
        child: buildPage(context),
      ),
    );
  }

  Widget buildPage(BuildContext context);
}
