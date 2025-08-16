import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/base/page_states/base_cubit_page_state.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/pages/onboarding/cubit/onboarding_cubit.dart';
import 'package:hubx/src/app/pages/onboarding/model/onboarding_data.dart';
import 'package:hubx/src/app/pages/onboarding/widgets/onboarding_page1.dart';
import 'package:hubx/src/app/pages/onboarding/widgets/onboarding_page2.dart';
import 'package:hubx/src/app/pages/onboarding/widgets/onboarding_page3.dart';
import 'package:hubx/src/app/pages/onboarding/widgets/onboarding_page_presenter.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/theme_extensions.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState
    extends BaseCubitPageState<OnboardingPage, OnboardingCubit> {
  @override
  OnboardingCubit createCubit() => OnboardingCubit();

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          return OnboardingPagePresenter(
            onSkip: () {
              cubit.skipOnboarding();
            },
            onFinish: () {
              cubit.completeOnboarding();
            },
            pages: [
              OnboardingData(
                title: Text.rich(
                  locale.onboarding.page1.title(
                    app: (text) => TextSpan(
                      text: text,
                      style: AppTextStyles.headlineMedium().copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  style: AppTextStyles.headlineMedium().copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: locale.onboarding.page1.subtitle,
                child: const OnboardingPage1(),
              ),
              OnboardingData(
                title: Text.rich(
                  locale.onboarding.page2.title(
                    identify: (text) => TextSpan(
                      text: text,
                      style: AppTextStyles.headlineMedium().copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1,
                      ),
                    ),
                  ),
                  style: AppTextStyles.headlineMedium().copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                  ),
                ),
                child: const OnboardingPage2(),
              ),
              OnboardingData(
                title: Text.rich(
                  locale.onboarding.page3.title(
                    careguides: (text) => TextSpan(
                      text: text,
                      style: AppTextStyles.headlineMedium().copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1,
                      ),
                    ),
                  ),
                  style: AppTextStyles.headlineMedium().copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                  ),
                  textAlign: TextAlign.start,
                ),
                child: const OnboardingPage3(),
              ),
            ],
          );
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      actions: [
        BlocBuilder<AppBloc, AppState>(
          buildWhen: (previous, current) =>
              previous.locale != current.locale ||
              previous.themeMode != current.themeMode,
          builder: (context, state) {
            return PopupMenuButton<AppLocale>(
              icon: const Icon(Icons.language),
              onSelected: (locale) => appBloc.add(
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
              onSelected: (theme) => appBloc.add(
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
    );
  }
}
