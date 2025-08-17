import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx/src/app/base/page_states/base_page.dart';
import 'package:hubx/src/app/navigation/app_router.gr.dart';
import 'package:hubx/src/app/pages/home/bloc/home_bloc.dart';
import 'package:hubx/src/app/pages/home/components/home_feature_card.dart';
import 'package:hubx/src/app/pages/home/components/home_greeting_section.dart';
import 'package:hubx/src/app/pages/home/components/home_plant_category_card.dart';
import 'package:hubx/src/app/pages/home/components/home_premium_card.dart';
import 'package:hubx/src/app/resource/styles/app_colors.dart';
import 'package:shimmer/shimmer.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {
  @override
  HomeBloc createBloc() => HomeBloc()..add(const HomeEvent.started());

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 30.h,
            children: [
              const HomeGreetingSection(),

              // Premium Card
              HomePremiumCard(
                onTap: () {
                  navigator.push(const PaywallRoute());
                },
              ),

              _buildQuestionCards(),

              _buildPlantCategoriesGrid(),

              SizedBox(height: 100.h), // Extra space for FAB
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionCards() {
    return SizedBox(
      height: 164.h,
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            previous.questions != current.questions ||
            previous.isQuestionsLoading != current.isQuestionsLoading,
        builder: (context, state) {
          if (state.isQuestionsLoading) {
            return _questionLoadingCards();
          }
          if (state.questions == null && !state.isQuestionsLoading) {
            return const SizedBox.shrink();
          }
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: 2,
            itemBuilder: (context, index) {
              final question = state.questions![index];
              return HomeFeatureCard(
                title: question.title,
                imageAsset: question.imageUri,
                onTap: () {
                  // Navigate to question details
                },
              );
            },
          );
        },
      ),
    );
  }

  ListView _questionLoadingCards() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          width: 200.w,
          margin: EdgeInsets.only(right: 16.w),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPlantCategoriesGrid() {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.categories != current.categories ||
          previous.isCategoriesLoading != current.isCategoriesLoading,
      builder: (context, state) {
        if (state.isCategoriesLoading) {
          return _categoryLoadingGrid();
        } else if (state.categories == null && !state.isCategoriesLoading) {
          return const SizedBox.shrink();
        }
        final categories = state.categories ?? [];
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.w,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return HomePlantCategoryCard(
              title: category.title,
              imageAsset: category.image.previewUrl ?? category.image.url,
              onTap: () {
                navigator.showInfoSnackBar(category.name);
              },
            );
          },
        );
      },
    );
  }

  Widget _categoryLoadingGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16.r),
          ),
        );
      },
    );
  }
}
