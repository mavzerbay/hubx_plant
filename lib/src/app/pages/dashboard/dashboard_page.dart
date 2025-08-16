import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx/gen/translations.g.dart';
import 'package:hubx/src/app/base/page_states/base_page.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/navigation/app_navigator_impl.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';
import 'package:hubx/src/app/pages/dashboard/bloc/dashboard_bloc.dart';
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
      backgroundColor: Colors.white,
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            AutoTabsRouter.of(context).setActiveIndex(2);
          },
          backgroundColor: const Color(0xFF4CAF50),
          elevation: 6,
          child: const Icon(
            Icons.qr_code_scanner,
            size: 32,
            color: Colors.white,
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
              shape: const CircularNotchedRectangle(),
              notchMargin: 8,
              color: Colors.white,
              elevation: 8,
              child: SizedBox(
                height: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(
                      context,
                      icon: Icons.inventory_2,
                      label: locale.bottomNavigation.home,
                      selected: tabsRouter.activeIndex == 0,
                      onTap: () => tabsRouter.setActiveIndex(0),
                    ),
                    _buildNavItem(
                      context,
                      icon: Icons.healing,
                      label: 'Diagnose',
                      selected: tabsRouter.activeIndex == 1,
                      onTap: () => tabsRouter.setActiveIndex(1),
                    ),
                    const SizedBox(width: 48), // Space for FAB
                    _buildNavItem(
                      context,
                      icon: Icons.local_florist,
                      label: 'My Garden',
                      selected: tabsRouter.activeIndex == 3,
                      onTap: () => tabsRouter.setActiveIndex(3),
                    ),
                    _buildNavItem(
                      context,
                      icon: Icons.person,
                      label: 'Profile',
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
    required IconData icon,
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    final color = selected ? const Color(0xFF4CAF50) : Colors.grey;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
