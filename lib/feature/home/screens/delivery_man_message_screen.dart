import 'package:flutter/material.dart';

class ChatMessageScreen extends StatefulWidget {
  const ChatMessageScreen({super.key});

  @override
  State<ChatMessageScreen> createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {
  // ألوان التصميم المستخرجة من الصورة
  final Color primaryOrange = const Color(0xFFFF7D33);
  final Color receiverBg = const Color(0xFFF1F5F9);
  final Color appBarIconBg = const Color(0xFFF1F5F9);
  final Color senderAvatar = const Color(0xFFFFCCB5);
  final Color receiverAvatar = const Color(0xFF94A3B8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: appBarIconBg,
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
                icon: Icon(Icons.close,
                color: Colors.black,
                size: 20
            ),
            ),
          ),
        ),
        title: const Text(
          'Robert Fox',
          style: TextStyle(color: Color(0xFF1E293B), fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          // قائمة الرسائل
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              children: [
                _buildSenderMessage("Are you coming?", "8:10 pm", isRead: true),
                _buildReceiverMessage("Hay, Congratulation for order", "8:11 pm"),
                _buildSenderMessage("Hey Where are you now?", "8:11 pm", isRead: true),
                _buildReceiverMessage("I’m Coming , just wait ...", "8:12 pm"),
                _buildSenderMessage("Hurry Up, Man", "8:12 pm", isRead: false),
              ],
            ),
          ),
          // حقل الإدخال السفلي
          _buildMessageInput(),
        ],
      ),
    );
  }

  // ودجت لرسالة المرسل (أنا) - باللون البرتقالي
  Widget _buildSenderMessage(String text, String time, {required bool isRead}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.done_all,
                  size: 16,
                  color: isRead ? primaryOrange : Colors.grey[400]),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.all(12),
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
                decoration: BoxDecoration(
                  color: primaryOrange,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(width: 10),
              CircleAvatar(radius: 18, backgroundColor: senderAvatar),
            ],
          ),
        ],
      ),
    );
  }

  // ودجت لرسالة المستلم - باللون الرمادي الفاتح
  Widget _buildReceiverMessage(String text, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(radius: 18, backgroundColor: receiverAvatar),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.all(12),
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
                decoration: BoxDecoration(
                  color: receiverBg,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(color: Color(0xFF334155)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ويدجت حقل الإدخال
  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: receiverBg,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(Icons.sentiment_satisfied_alt_outlined, color: Colors.grey[500]),
            const SizedBox(width: 10),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Write somethings",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.send_rounded, color: primaryOrange, size: 20),
            ),
          ],
        ),
      ),
    );
  }
}