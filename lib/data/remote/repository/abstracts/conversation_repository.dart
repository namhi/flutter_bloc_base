import 'package:flutter_bloc_base/models/conversation.dart';

abstract class ConversationRepository {
  /// Get a list conversations filter by query model.
  Future<List<Conversation>> gets();
  Future<void> markRead(Conversation conversation);
  Future<void> markUnread(Conversation conversation);
}
