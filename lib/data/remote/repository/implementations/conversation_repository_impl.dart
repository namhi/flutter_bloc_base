import 'package:dio/dio.dart';
import 'package:flutter_bloc_base/data/remote/repository/abstracts/conversation_repository.dart';
import 'package:flutter_bloc_base/models/conversation.dart';

class ConversationsRepositoryImpl implements ConversationRepository {
  ConversationsRepositoryImpl({required Dio dio}) : _dio = dio;

  late final _dio;
  @override
  Future<List<Conversation>> gets() {
    // TODO: implement markRead
    throw UnimplementedError();
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
