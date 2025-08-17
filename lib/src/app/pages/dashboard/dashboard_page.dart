import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/gen/assets.gen.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/base/page_states/base_page.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/navigation/app_navigator_impl.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';
import 'package:hubx/src/app/pages/dashboard/bloc/dashboard_bloc.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:hubx/src/app/resource/styles/app_text_styles.dart';
import 'package:hubx/src/shared/extensions/context_extension.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends BasePageState<DashboardPage, DashboardBloc> {
  @override
  DashboardBloc createBloc() =>
      DashboardBloc()..add(const DashboardEvent.started());

  @override
  Widget buildPage(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        DiagnoseRoute(),
        AnalyzeRoute(),
        MyGardenRoute(),
        ProfileRoute(),
      ],
      floatingActionButton: Container(
        width: 66.sp,
        height: 66.sp,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.fabBorderColor,
            width: 4,
          ),
          gradient: AppColors.fabGradient,
        ),
        child: FloatingActionButton(
          onPressed: () => navigator.navigateToBottomTab(2),
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: const CircleBorder(),
          child: Assets.icons.identifyIcon.image(
            width: 26.sp,
            height: 26.sp,
            fit: BoxFit.contain,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) {
        (context.navigator as AppNavigatorImpl).tabsRouter = tabsRouter;
        return BlocBuilder<AppBloc, AppState>(
          buildWhen: (previous, current) => previous.locale != current.locale,
          builder: (context, state) {
            return BottomAppBar(
              elevation: 8,
              child: SizedBox(
                height: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(
                      context,
                      iconPath: Assets.icons.homeIcon.path,
                      label: locale.bottomNavigation.home,
                      selected: tabsRouter.activeIndex == 0,
                      onTap: () => tabsRouter.setActiveIndex(0),
                    ),
                    _buildNavItem(
                      context,
                      iconPath: Assets.icons.healthcareIcon.path,
                      label: locale.bottomNavigation.diagnose,
                      selected: tabsRouter.activeIndex == 1,
                      onTap: () => tabsRouter.setActiveIndex(1),
                    ),
                    const SizedBox(width: 48), // Space for FAB
                    _buildNavItem(
                      context,
                      iconPath: Assets.icons.gardenIcon.path,
                      label: locale.bottomNavigation.myGarden,
                      selected: tabsRouter.activeIndex == 3,
                      onTap: () => tabsRouter.setActiveIndex(3),
                    ),
                    _buildNavItem(
                      context,
                      iconPath: Assets.icons.profileIcon.path,
                      label: locale.bottomNavigation.profile,
                      selected: tabsRouter.activeIndex == 4,
                      onTap: () => tabsRouter.setActiveIndex(4),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required String iconPath,
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    final color = selected
        ? AppColors.current.primaryColor
        : AppColors.current.passiveColor;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              color: color,
              width: 28.sp,
              height: 28.sp,
            ),
            Text(
              label,
              style: AppTextStyles.bodySmall().copyWith(
                fontSize: 10.sp,
                color: color,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                letterSpacing: -0.24.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
