import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';

class MyTab extends ConsumerWidget {
  const MyTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileSection(),
            const SizedBox(height: 24),
            _buildMenuSection(
              title: '예약 관리',
              items: [
                _buildMenuItem(
                  icon: Icons.calendar_today,
                  title: '예약 내역',
                  subtitle: '진행 중인 예약 2건',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.history,
                  title: '예약 히스토리',
                  subtitle: '완료된 예약 5건',
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildMenuSection(
              title: '의료 서비스',
              items: [
                _buildMenuItem(
                  icon: Icons.medical_services,
                  title: '관심 시술',
                  subtitle: '피부과, 성형외과',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.favorite,
                  title: '찜한 가이드',
                  subtitle: '3명의 가이드',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.rate_review,
                  title: '리뷰 관리',
                  subtitle: '작성한 리뷰 2건',
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildMenuSection(
              title: '계정 관리',
              items: [
                _buildMenuItem(
                  icon: Icons.person,
                  title: '프로필 수정',
                  subtitle: '개인정보 관리',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.notifications,
                  title: '알림 설정',
                  subtitle: '푸시 알림 관리',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.security,
                  title: '보안 설정',
                  subtitle: '비밀번호 변경',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: Icons.help,
                  title: '고객센터',
                  subtitle: '문의하기',
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: 로그아웃 구현
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[50],
                  foregroundColor: Colors.red,
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: const Text('로그아웃'),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      color: AppColors.primary.withOpacity(0.1),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: ClipOval(
              child: Image.network(
                'https://picsum.photos/200/200?random=1',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.grey,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '홍길동',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'hong@example.com',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary,
              side: BorderSide(color: AppColors.primary),
            ),
            child: const Text('프로필 수정'),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuSection({
    required String title,
    required List<Widget> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        ...items,
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
