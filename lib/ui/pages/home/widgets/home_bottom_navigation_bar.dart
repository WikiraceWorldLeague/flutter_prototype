import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../home_view_model.dart';

class HomeBottomNavigationBar extends ConsumerWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.read(homeViewModelProvider.notifier);

    return BottomNavigationBar(
      currentIndex: state.currentIndex,
      onTap: viewModel.setCurrentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.neutralWhite,
      selectedItemColor: AppColors.primaryBlue,
      unselectedItemColor: AppColors.neutralGray400,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      items: state.userType == UserType.tourist
          ? _buildTouristItems()
          : _buildGuideItems(),
    );
  }

  List<BottomNavigationBarItem> _buildTouristItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        activeIcon: Icon(Icons.search),
        label: '가이드 찾기',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.today_outlined),
        activeIcon: Icon(Icons.today),
        label: '투데이',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.message_outlined),
        activeIcon: Icon(Icons.message),
        label: '메시지',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        activeIcon: Icon(Icons.person),
        label: '마이페이지',
      ),
    ];
  }

  List<BottomNavigationBarItem> _buildGuideItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.today_outlined),
        activeIcon: Icon(Icons.today),
        label: '오늘',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month_outlined),
        activeIcon: Icon(Icons.calendar_month),
        label: '달력',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.message_outlined),
        activeIcon: Icon(Icons.message),
        label: '메시지',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.menu_outlined),
        activeIcon: Icon(Icons.menu),
        label: '메뉴',
      ),
    ];
  }
}
