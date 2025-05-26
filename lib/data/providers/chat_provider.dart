import 'package:flutter/foundation.dart';
import '../models/chat_message.dart';

class ChatProvider with ChangeNotifier {
  final List<ChatThread> _threads = [];
  ChatThread? _currentThread;

  List<ChatThread> get threads => _threads;
  ChatThread? get currentThread => _currentThread;

  void initializeThreads() {
    _threads.addAll([
      ChatThread(
        id: '1',
        guideId: 'guide_1',
        guideName: 'Christine 克莉絲汀',
        guideImage:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
        tags: ['피부과', '레이저 시술', '상담'],
        lastMessage: '피부과 상담 일정을 확인해주세요.',
        time: '10:00',
        unreadCount: 2,
        messages: [
          ChatMessage(
            isMe: false,
            message: '안녕하세요, Christine입니다. 어떤 도움이 필요하신가요?',
            time: '09:30',
          ),
          ChatMessage(
            isMe: true,
            message: '레이저 시술 상담을 받고 싶습니다.',
            time: '09:35',
          ),
          ChatMessage(
            isMe: false,
            message: '네, 상담 가능한 시간을 알려드리겠습니다.',
            time: '09:40',
          ),
          ChatMessage(
            isMe: false,
            message: '피부과 상담 일정을 확인해주세요.',
            time: '10:00',
          ),
        ],
      ),
      ChatThread(
        id: '2',
        guideId: 'guide_2',
        guideName: 'John 約翰',
        guideImage:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80',
        tags: ['성형외과', '수술', '사후관리'],
        lastMessage: '성형 수술 전 상담 준비가 완료되었습니다.',
        time: '11:00',
        unreadCount: 1,
        messages: [
          ChatMessage(
            isMe: false,
            message: '안녕하세요, John입니다. 어떤 상담이 필요하신가요?',
            time: '10:30',
          ),
          ChatMessage(
            isMe: true,
            message: '눈성형 상담을 받고 싶습니다.',
            time: '10:35',
          ),
          ChatMessage(
            isMe: false,
            message: '성형 수술 전 상담 준비가 완료되었습니다.',
            time: '11:00',
          ),
        ],
      ),
      ChatThread(
        id: '3',
        guideId: 'guide_3',
        guideName: 'Laura 勞拉',
        guideImage: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2',
        tags: ['보톡스', '필러', '리프팅'],
        lastMessage: '보톡스 시술 상담 준비가 완료되었습니다.',
        time: '14:00',
        unreadCount: 3,
        messages: [
          ChatMessage(
            isMe: false,
            message: '안녕하세요, Laura입니다. 어떤 시술에 관심이 있으신가요?',
            time: '13:30',
          ),
          ChatMessage(
            isMe: true,
            message: '보톡스 시술에 대해 문의드립니다.',
            time: '13:35',
          ),
          ChatMessage(
            isMe: false,
            message: '보톡스 시술 상담 준비가 완료되었습니다.',
            time: '14:00',
          ),
        ],
      ),
      ChatThread(
        id: '4',
        guideId: 'guide_9',
        guideName: 'Grace 格蕾絲',
        guideImage: 'https://images.unsplash.com/photo-1554151228-14d9def656e4',
        tags: ['화이트닝', '피부관리', '안티에이징'],
        lastMessage: '화이트닝 시술 상담 일정을 조정해드리겠습니다.',
        time: '15:00',
        unreadCount: 0,
        messages: [
          ChatMessage(
            isMe: false,
            message: '안녕하세요, Grace입니다. 어떤 피부관리가 필요하신가요?',
            time: '14:30',
          ),
          ChatMessage(
            isMe: true,
            message: '화이트닝 시술에 대해 문의드립니다.',
            time: '14:35',
          ),
          ChatMessage(
            isMe: false,
            message: '화이트닝 시술 상담 일정을 조정해드리겠습니다.',
            time: '15:00',
          ),
        ],
      ),
    ]);
    notifyListeners();
  }

  void setCurrentThread(String threadId) {
    _currentThread = _threads.firstWhere((thread) => thread.id == threadId);
    notifyListeners();
  }

  void addMessage(String threadId, ChatMessage message) {
    final threadIndex = _threads.indexWhere((thread) => thread.id == threadId);
    if (threadIndex != -1) {
      final updatedMessages = [..._threads[threadIndex].messages, message];
      _threads[threadIndex] = _threads[threadIndex].copyWith(
        messages: updatedMessages,
        lastMessage: message.message,
        time: message.time,
      );
      if (_currentThread?.id == threadId) {
        _currentThread = _threads[threadIndex];
      }
      notifyListeners();
    }
  }

  void clearUnreadCount(String threadId) {
    final threadIndex = _threads.indexWhere((thread) => thread.id == threadId);
    if (threadIndex != -1) {
      _threads[threadIndex] = _threads[threadIndex].copyWith(unreadCount: 0);
      if (_currentThread?.id == threadId) {
        _currentThread = _threads[threadIndex];
      }
      notifyListeners();
    }
  }
}
