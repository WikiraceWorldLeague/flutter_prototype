import 'package:flutter_riverpod/flutter_riverpod.dart';

enum UserType {
  tourist,
  guide,
}

class SignState {
  final UserType userType;
  final bool isLogin;
  final bool isLoading;
  final String? error;

  const SignState({
    this.userType = UserType.tourist,
    this.isLogin = false,
    this.isLoading = false,
    this.error,
  });

  SignState copyWith({
    UserType? userType,
    bool? isLogin,
    bool? isLoading,
    String? error,
  }) {
    return SignState(
      userType: userType ?? this.userType,
      isLogin: isLogin ?? this.isLogin,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class SignViewModel extends StateNotifier<SignState> {
  SignViewModel() : super(const SignState());

  void setUserType(UserType type) {
    state = state.copyWith(userType: type);
  }

  Future<void> signIn(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Dummy validation
      if (email.isEmpty || password.isEmpty) {
        throw Exception('이메일과 비밀번호를 입력해주세요.');
      }

      if (email != 'test@example.com' || password != 'password') {
        throw Exception('이메일 또는 비밀번호가 올바르지 않습니다.');
      }

      state = state.copyWith(
        isLogin: true,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> signUp(String email, String password, String name) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Dummy validation
      if (email.isEmpty || password.isEmpty || name.isEmpty) {
        throw Exception('모든 필드를 입력해주세요.');
      }

      if (password.length < 6) {
        throw Exception('비밀번호는 6자 이상이어야 합니다.');
      }

      state = state.copyWith(
        isLogin: true,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  void signOut() {
    state = state.copyWith(isLogin: false);
  }
}

final signViewModelProvider =
    StateNotifierProvider<SignViewModel, SignState>((ref) {
  return SignViewModel();
});
