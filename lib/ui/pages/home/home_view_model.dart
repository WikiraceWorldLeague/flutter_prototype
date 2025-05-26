import 'package:flutter_riverpod/flutter_riverpod.dart';

enum UserType {
  tourist,
  guide,
}

enum TouristTab {
  guideSearch,
  today,
  messages,
  myPage,
}

enum GuideTab {
  today,
  calendar,
  messages,
  menu,
}

class HomeState {
  final UserType userType;
  final int currentIndex;
  final bool isLoading;

  HomeState({
    required this.userType,
    required this.currentIndex,
    this.isLoading = false,
  });

  HomeState copyWith({
    UserType? userType,
    int? currentIndex,
    bool? isLoading,
  }) {
    return HomeState(
      userType: userType ?? this.userType,
      currentIndex: currentIndex ?? this.currentIndex,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel()
      : super(HomeState(
          userType: UserType.tourist, // TODO: Get from auth service
          currentIndex: 0,
        ));

  void setUserType(UserType type) {
    state = state.copyWith(
      userType: type,
      currentIndex: 0, // Reset index when changing user type
    );
  }

  void setCurrentIndex(int index) {
    final maxIndex = state.userType == UserType.tourist
        ? TouristTab.values.length - 1
        : GuideTab.values.length - 1;

    if (index >= 0 && index <= maxIndex) {
      state = state.copyWith(currentIndex: index);
    }
  }

  void setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }
}

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeState>((ref) {
  return HomeViewModel();
});
