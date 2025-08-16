import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/base/cache/cache_manager.dart';
import 'package:hubx/src/domain/usecase/base/base_future_use_case.dart';
import 'package:hubx/src/domain/usecase/base/io/base_input.dart';
import 'package:hubx/src/domain/usecase/base/io/base_output.dart';
import 'package:hubx/src/shared/async_helper/result.dart';
import 'package:hubx/src/shared/async_helper/run_catching.dart';

part 'get_initial_app_data_usecase.freezed.dart';

class GetInitialAppDataUseCase
    extends BaseFutureUseCase<GetInitialAppDataInput, GetInitialAppDataOutput> {
  const GetInitialAppDataUseCase();

  @protected
  @override
  Future<GetInitialAppDataOutput> buildUseCase(
    GetInitialAppDataInput input,
  ) async {
    final cacheManager = CacheManager.instance;

    final output = await runAsyncCatching(
      action: () async {
        await Future<void>.delayed(const Duration(seconds: 3));
        return Future.wait([
          cacheManager.getString(key: CacheKey.accessToken),
          cacheManager.getString(key: CacheKey.dateExpired),
          cacheManager.getString(key: CacheKey.locale),
          cacheManager.getBool(key: CacheKey.isFirstLaunchApp),
          cacheManager.getInt(key: CacheKey.themeMode),
        ]);
      },
    );

    final [
      accessToken,
      dateExpired,
      locale,
      isFirstLaunchApp,
      themeModeIndex,
    ] = output.when(
      success: (data) {
        return data;
      },
      failure: (exception) {
        return [null, null, AppLocale.tr, true, 0];
      },
    );

    final themeMode = ThemeMode.values[themeModeIndex as int? ?? 0];

    final isLoggedIn =
        accessToken != null &&
        (dateExpired as String?) != null &&
        DateTime.parse(dateExpired!).isAfter(DateTime.now());

    return GetInitialAppDataOutput(
      isLoggedIn: isLoggedIn,
      locale: AppLocale.values.firstWhere(
        (l) => l.languageCode == locale,
        orElse: () => AppLocale.tr,
      ),
      isFirstLaunchApp: isFirstLaunchApp as bool? ?? true,
      themeMode: themeMode,
    );
  }
}

class GetInitialAppDataInput extends BaseInput {
  const GetInitialAppDataInput();
}

@freezed
abstract class GetInitialAppDataOutput extends BaseOutput
    with _$GetInitialAppDataOutput {
  const factory GetInitialAppDataOutput({
    @Default(ThemeMode.dark) ThemeMode themeMode,
    @Default(false) bool isLoggedIn,
    @Default(true) bool isFirstLaunchApp,
    @Default(AppLocale.tr) AppLocale locale,
  }) = _GetInitialAppDataOutput;

  const GetInitialAppDataOutput._();
}
