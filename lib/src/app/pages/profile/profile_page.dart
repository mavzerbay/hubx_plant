import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/shared/extensions/context_extension.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        title: Text(
          locale.bottomNavigation.profile,
        ),
        centerTitle: true,
        actions: [
          BlocBuilder<AppBloc, AppState>(
            buildWhen: (previous, current) =>
                previous.locale != current.locale ||
                previous.themeMode != current.themeMode,
            builder: (context, state) {
              return PopupMenuButton<AppLocale>(
                icon: const Icon(Icons.language),
                onSelected: (locale) => context.appBloc.add(
                  AppEvent.appLanguageChanged(locale: locale),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: AppLocale.en,
                    enabled: state.locale != AppLocale.en,
                    child: Text(
                      'English',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: state.locale == AppLocale.en
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: AppLocale.tr,
                    enabled: state.locale != AppLocale.tr,
                    child: Text(
                      'Türkçe',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: state.locale == AppLocale.tr
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          BlocBuilder<AppBloc, AppState>(
            buildWhen: (previous, current) =>
                previous.themeMode != current.themeMode,
            builder: (context, state) {
              return PopupMenuButton<ThemeMode>(
                icon: const Icon(Icons.color_lens_outlined),
                onSelected: (theme) => context.appBloc.add(
                  AppEvent.appThemeModeChanged(themeMode: theme),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: ThemeMode.system,
                    enabled: state.themeMode != ThemeMode.system,
                    child: Text(
                      locale.app.theme.system,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: state.themeMode == ThemeMode.system
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: ThemeMode.light,
                    enabled: state.themeMode != ThemeMode.light,
                    child: Text(
                      locale.app.theme.light,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: state.themeMode == ThemeMode.light
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: ThemeMode.dark,
                    enabled: state.themeMode != ThemeMode.dark,
                    child: Text(
                      locale.app.theme.dark,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: state.themeMode == ThemeMode.dark
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
