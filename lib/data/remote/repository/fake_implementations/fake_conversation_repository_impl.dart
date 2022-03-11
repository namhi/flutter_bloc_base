import 'package:flutter_bloc_base/data/remote/repository/abstracts/conversation_repository.dart';
import 'package:flutter_bloc_base/models/conversation.dart';

class FakeConversationRepositoryImpl implements ConversationRepository {
  final List<Conversation> _conversations = [
    Conversation(id: '1', name: 'Nguyễn Nam'),
    Conversation(id: '2', name: 'Lương Tiệp'),
    Conversation(id: '2', name: 'Hội buôn bán'),
  ];
  @override
  Future<List<Conversation>> gets() async {
    await Future<List<Conversation>>.delayed(const Duration(seconds: 1));
    return _conversations.toList();
  }

  @override
  Future<void> markRead(Conversation conversation) {
    // TODO: implement markRead
    throw UnimplementedError();
  }

  @override
  Future<void> markUnread(Conversation conversation) {
    // TODO: implement markUnread
    throw UnimplementedError();
  }
}
