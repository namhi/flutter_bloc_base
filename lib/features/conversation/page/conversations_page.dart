import 'package:flutter/material.dart';
import 'package:flutter_bloc_base/features/conversation/widget/conversation_item_widget.dart';

class ConversationsPage extends StatefulWidget {
  const ConversationsPage({Key? key}) : super(key: key);

  @override
  State<ConversationsPage> createState() => _ConversationsPageState();
}

class _ConversationsPageState extends State<ConversationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScaffoldBody(),
    );
  }

  Widget _buildScaffoldBody() {
    return ListView.separated(
        itemBuilder: (context, item) {
          return const ConversationItemWidget();
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10);
  }
}
