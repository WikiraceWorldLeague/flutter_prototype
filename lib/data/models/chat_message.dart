class ChatMessage {
  final bool isMe;
  final String message;
  final String time;

  ChatMessage({
    required this.isMe,
    required this.message,
    required this.time,
  });
}

class ChatThread {
  final String id;
  final String guideId;
  final String guideName;
  final String guideImage;
  final List<String> tags;
  final String lastMessage;
  final String time;
  final int unreadCount;
  final List<ChatMessage> messages;

  ChatThread({
    required this.id,
    required this.guideId,
    required this.guideName,
    required this.guideImage,
    required this.tags,
    required this.lastMessage,
    required this.time,
    required this.unreadCount,
    required this.messages,
  });

  ChatThread copyWith({
    String? id,
    String? guideId,
    String? guideName,
    String? guideImage,
    List<String>? tags,
    String? lastMessage,
    String? time,
    int? unreadCount,
    List<ChatMessage>? messages,
  }) {
    return ChatThread(
      id: id ?? this.id,
      guideId: guideId ?? this.guideId,
      guideName: guideName ?? this.guideName,
      guideImage: guideImage ?? this.guideImage,
      tags: tags ?? this.tags,
      lastMessage: lastMessage ?? this.lastMessage,
      time: time ?? this.time,
      unreadCount: unreadCount ?? this.unreadCount,
      messages: messages ?? this.messages,
    );
  }
}
