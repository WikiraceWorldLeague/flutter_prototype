import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../home_view_model.dart';
import '../guide_search_page.dart';
import '../tabs/message_tab.dart';
import '../tabs/my_tab.dart';
import '../tabs/today_tab.dart';

class HomeIndexedStack extends ConsumerWidget {
  const HomeIndexedStack({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeViewModelProvider).currentIndex;

    return IndexedStack(
      index: currentIndex,
      children: const [
        GuideSearchPage(),
        TodayTab(),
        MessageTab(),
        MyTab(),
      ],
    );
  }
}
