import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:YesNoApp_210820/domain/entities/message.dart';

import 'package:YesNoApp_210820/persentation/providers/chat_provider.dart';
import 'package:YesNoApp_210820/persentation/widgets/chat/other_message_bubble.dart';
import 'package:YesNoApp_210820/persentation/widgets/chat/my_message_bubble.dart';
import 'package:YesNoApp_210820/persentation/widgets/shared/message_field_box.dart';

class ChastScreen extends StatelessWidget {
  const ChastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/psd-gratis/representacion-3d-emoji-avatar-nino_23-2150603408.jpg'),
          ),
        ),
        title: Text('Brother 😎✌️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {
                      final message = chatProvider.messageList[index];

                      return (message.fromWho == FromWho.hers)
                          ? HerMessageBubble(message: message)
                          : MyMessageBubble(message: message);
                    })),

            /// Caja de texto de mensajes
            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
