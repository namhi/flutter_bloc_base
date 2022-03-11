import 'package:freezed_annotation/freezed_annotation.dart';

import 'attachment.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    required String id,
    required String conversationId,
    String? content,
    String? clientId,
    @Default(<Attachment>[]) List<Attachment> attachments,
    DateTime? dateTime,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
