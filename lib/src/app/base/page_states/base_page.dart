import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx/src/app/base/bloc/base_bloc.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/navigation/app_navigator_impl.dart';
import 'package:hubx/src/app/navigation/app_router.dart' as ar;
import 'package:hubx/src/app/resource/dimens/app_dimen.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/domain/domain/app_navigator.dart';
import 'package:hubx/src/shared/extensions/context_extension.dart';
import 'package:provider/provider.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc>
    extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<
  T extends StatefulWidget,
  B extends BaseBloc
>
    extends State<T> {
  late final AppBloc appBloc = context.appBloc;
  late final ar.AppRouter router = ar.router;
  late final AppNavigator navigator = AppNavigatorImpl.instance;

  late final B bloc = (() {
    final maybeBloc = readBloc();
    if (maybeBloc != null) return maybeBloc;
    final created = createBloc()..appBloc = appBloc;
    return created;
  })();

  B createBloc() {
    throw UnimplementedError(
      'Either override createBloc or provide bloc via context',
    );
  }

  B? readBloc() {
    try {
      return context.read<B>();
    } on Exception {
      return null;
    }
  }

  bool get isAppWidget => false;

  bool get closeBlocOnDispose => true;

  @override
  void dispose() {
    if (closeBlocOnDispose) {
      bloc.close();
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
        value: bloc,
        child: buildPage(context),
      ),
    );
  }

  @protected
  Widget buildPage(BuildContext context);
}
