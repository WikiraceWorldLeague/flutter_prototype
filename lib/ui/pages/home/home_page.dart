import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/custom_app_bar.dart';
import 'home_view_model.dart';
import 'widgets/home_bottom_navigation_bar.dart';
import 'widgets/home_indexed_stack.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Carely',
        showBackButton: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.swap_horiz),
            onPressed: () {
              final viewModel = ref.read(homeViewModelProvider.notifier);
              viewModel.setUserType(
                state.userType == UserType.tourist
                    ? UserType.guide
                    : UserType.tourist,
              );
            },
          ),
        ],
      ),
      body: const HomeIndexedStack(),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
