import 'package:flutter/material.dart';
import '../../../data/models/guide.dart';
import '../guide_detail/guide_detail_page.dart';
import '../../../../core/constants/app_colors.dart';

class GuideSearchPage extends StatelessWidget {
  const GuideSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 임시 데이터
    final List<Guide> guides = [
      Guide(
        id: 'guide_1',
        nickname: 'Christine 克莉絲汀',
        nationality: '대만',
        birthPlace: '타이난',
        residenceCity: '타이베이',
        ageRange: '30-35',
        realName: '김서연',
        birthDate: DateTime(1990, 1, 1),
        languages: ['한국어', '영어', '일본어'],
        specialties: ['피부과', '레이저 시술', '상담'],
        introduction:
            '피부과 전문 통역 가이드입니다. 레이저 시술, 보톡스, 필러 등 다양한 시술에 대한 전문적인 통역 서비스를 제공합니다.',
        rating: 4.8,
        reviewCount: 127,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 50000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
      ),
      Guide(
        id: 'guide_2',
        nickname: 'John 約翰',
        nationality: '홍콩',
        birthPlace: '홍콩',
        residenceCity: '홍콩',
        ageRange: '35-40',
        realName: '이준호',
        birthDate: DateTime(1988, 5, 15),
        languages: ['한국어', '영어', '중국어'],
        specialties: ['성형외과', '수술', '사후관리'],
        introduction:
            '성형외과 전문 통역 가이드입니다. 눈, 코, 턱 등 다양한 성형 수술에 대한 상세한 상담과 수술 전후 관리를 도와드립니다.',
        rating: 4.9,
        reviewCount: 156,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 60000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80',
      ),
      Guide(
        id: 'guide_3',
        nickname: 'Laura 勞拉',
        nationality: '중국',
        birthPlace: '선전',
        residenceCity: '상하이',
        ageRange: '28-32',
        realName: '박지은',
        birthDate: DateTime(1992, 8, 20),
        languages: ['한국어', '영어', '러시아어'],
        specialties: ['피부과', '사후관리', '상담'],
        introduction:
            '피부과 사후관리 전문 통역 가이드입니다. 시술 후 관리와 재활 과정에서 필요한 모든 통역 서비스를 제공합니다.',
        rating: 4.7,
        reviewCount: 98,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 45000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2',
      ),
      Guide(
        id: 'guide_4',
        nickname: 'Kevin 凱文',
        nationality: '대한민국',
        birthPlace: '인천',
        residenceCity: '서울시 강남구',
        ageRange: '32-37',
        realName: '최민수',
        birthDate: DateTime(1989, 3, 10),
        languages: ['한국어', '영어', '중국어'],
        specialties: ['성형외과', '눈 성형', '상담'],
        introduction:
            '눈 성형 전문 통역 가이드입니다. 쌍꺼풀, 눈매교정 등 다양한 눈 성형 수술에 대한 상세한 상담을 제공합니다.',
        rating: 4.8,
        reviewCount: 112,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 55000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
      ),
      Guide(
        id: 'guide_5',
        nickname: 'Sophie 蘇菲',
        nationality: '대만',
        birthPlace: '신주',
        residenceCity: '가오슝',
        ageRange: '29-34',
        realName: '이수진',
        birthDate: DateTime(1991, 7, 25),
        languages: ['한국어', '영어', '일본어'],
        specialties: ['피부과', '보톡스', '필러'],
        introduction: '보톡스와 필러 전문 통역 가이드입니다. 안전하고 자연스러운 시술을 위한 상세한 상담을 제공합니다.',
        rating: 4.9,
        reviewCount: 143,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 52000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2',
      ),
      Guide(
        id: 'guide_6',
        nickname: 'Michael 邁克',
        nationality: '중국',
        birthPlace: '청두',
        residenceCity: '베이징',
        ageRange: '34-39',
        realName: '김태호',
        birthDate: DateTime(1987, 11, 5),
        languages: ['한국어', '영어', '중국어'],
        specialties: ['성형외과', '턱 성형', '사후관리'],
        introduction:
            '턱 성형 전문 통역 가이드입니다. V라인, 턱 교정 등 다양한 턱 성형 수술에 대한 상세한 상담을 제공합니다.',
        rating: 4.7,
        reviewCount: 89,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 58000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
      ),
      Guide(
        id: 'guide_7',
        nickname: 'Emma 艾瑪',
        nationality: '홍콩',
        birthPlace: '홍콩',
        residenceCity: '홍콩',
        ageRange: '27-32',
        realName: '정다은',
        birthDate: DateTime(1993, 4, 15),
        languages: ['한국어', '영어', '일본어'],
        specialties: ['피부과', '레이저 시술', '사후관리'],
        introduction:
            '레이저 시술 전문 통역 가이드입니다. 다양한 레이저 시술에 대한 상세한 상담과 사후 관리를 제공합니다.',
        rating: 4.8,
        reviewCount: 76,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 48000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2',
      ),
      Guide(
        id: 'guide_8',
        nickname: 'David 大衛',
        nationality: '대만',
        birthPlace: '지룽',
        residenceCity: '타이중',
        ageRange: '33-38',
        realName: '박준영',
        birthDate: DateTime(1988, 9, 20),
        languages: ['한국어', '영어', '중국어'],
        specialties: ['성형외과', '코 성형', '상담'],
        introduction:
            '코 성형 전문 통역 가이드입니다. 자연스러운 코 라인을 위한 다양한 수술 방법에 대한 상세한 상담을 제공합니다.',
        rating: 4.9,
        reviewCount: 134,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 62000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d',
      ),
      Guide(
        id: 'guide_9',
        nickname: 'Grace 格蕾絲',
        nationality: '중국',
        birthPlace: '항저우',
        residenceCity: '광저우',
        ageRange: '30-35',
        realName: '한미영',
        birthDate: DateTime(1990, 6, 8),
        languages: ['한국어', '영어', '일본어'],
        specialties: ['피부과', '화이트닝', '상담'],
        introduction:
            '피부 화이트닝 전문 통역 가이드입니다. 안전하고 효과적인 미백 시술에 대한 상세한 상담을 제공합니다.',
        rating: 4.7,
        reviewCount: 92,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 49000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1554151228-14d9def656e4',
      ),
      Guide(
        id: 'guide_10',
        nickname: 'William 威廉',
        nationality: '대한민국',
        birthPlace: '대구',
        residenceCity: '부산시 해운대구',
        ageRange: '35-40',
        realName: '이상훈',
        birthDate: DateTime(1987, 2, 28),
        languages: ['한국어', '영어', '중국어'],
        specialties: ['성형외과', '턱 성형', '사후관리'],
        introduction:
            '턱 성형 사후관리 전문 통역 가이드입니다. 수술 후 재활 과정에서 필요한 모든 통역 서비스를 제공합니다.',
        rating: 4.8,
        reviewCount: 118,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pricePerHour: 54000,
        isVerified: true,
        profileImageUrl:
            'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
      ),
    ];

    // 국가별 국기 이모지
    final Map<String, String> flagEmojis = {
      '대한민국': '🇰🇷',
      '중국': '🇨🇳',
      '대만': '🇹🇼',
      '홍콩': '🇭🇰',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('의료 통역 가이드'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: 검색 기능 구현
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: guides.length,
        itemBuilder: (context, index) {
          final guide = guides[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GuideDetailPage(guide: guide),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  guide.profileImageUrl,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 80,
                                      height: 80,
                                      color: Colors.grey[200],
                                      child: const Icon(
                                        Icons.person,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  flagEmojis[guide.nationality] ?? '',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    guide.nickname,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  if (guide.isVerified) ...[
                                    const SizedBox(width: 4),
                                    Icon(
                                      Icons.verified,
                                      size: 16,
                                      color: AppColors.primary,
                                    ),
                                  ],
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${guide.birthPlace} 출신',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: Colors.grey[600],
                                    ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.amber[700],
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    guide.rating.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '(${guide.reviewCount})',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: Colors.grey[600],
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      guide.introduction,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: guide.specialties.map((specialty) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.secondaryGreen.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            specialty,
                            style: TextStyle(
                              color: AppColors.secondaryGreen,
                              fontSize: 12,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '시간당 ${guide.pricePerHour.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}원',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
