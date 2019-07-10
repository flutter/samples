import 'package:flutter/material.dart';

final ThemeData kIOSTheme = ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);
final ThemeData kDefaultTheme = ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent,
);
void main() {
  runApp(FriendlychatApp());
}

class FriendlychatApp extends StatelessWidget {
  final String name = 'Kenneth Ford';

  @override
  Widget build(BuildContext build) {
    return MaterialApp(
      title: 'Friendlychat',
      theme: Theme.of(build).platform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: ChatAppHomePage(title: 'Friendlychat'),
    );
  }
}

class ChatAppHomePage extends StatefulWidget {
  ChatAppHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChatAppHomePageState createState() => _ChatAppHomePageState();
}

class _ChatAppHomePageState extends State<ChatAppHomePage> {
  final List<ChatListEntry> chats = List<ChatListEntry>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Use LayoutBuilder to determine which layout to use.
      // 500 is an arbitray number for this example. Adjust
      // accordingly based on your needs.
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double width = constraints.maxWidth;
          debugPrint('width: $width');
          if (constraints.maxWidth > 800) {
            return TwoPaneChatLayout(chatEntries: chats);
          } else {
            return ChatListScreen(chatEntries: chats);
          }
        },
      ),
    );
  }

  @override
  void initState() {
    chats.add(ChatListEntry("Person 1"));
    chats.add(ChatListEntry("Person 2"));
    chats.add(ChatListEntry("Person 3"));
    super.initState();
  }
}

// Code layout in row
class TwoPaneChatLayout extends StatelessWidget {
  final List<ChatListEntry> chatEntries;

  TwoPaneChatLayout({Key key, @required this.chatEntries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: ChatListScreen(chatEntries: chatEntries),
          constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
        ),
        VerticalDivider(),
        Flexible(
          child: ChatScreen(contactName: chatEntries[0].name),
        )
      ],
    );
  }
}

class ChatListScreen extends StatelessWidget {
  final List<ChatListEntry> chatEntries;

  ChatListScreen({Key key, @required this.chatEntries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatEntries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(chatEntries[index].name[0]),
            ),
            title: Text(chatEntries[index].name),
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (context) =>
                      ChatScreen(contactName: chatEntries[index].name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  final String contactName;

  ChatScreen({Key key, @required this.contactName}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState(contactName: contactName);
  }
}

class ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];
  final String contactName;

  ChatScreenState({@required this.contactName}) : super();

  bool _isComposing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                //modified
                icon: Icon(Icons.send),
                onPressed: _isComposing
                    ? () => _handleSubmitted(_textController.text)
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
        duration: Duration(milliseconds: 200),
        vsync: this,
      ),
      name: contactName,
    );
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animationController, this.name});
  final String text;
  final AnimationController animationController;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
      axisAlignment: 0.0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(child: Text(name[0])),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.subhead),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatListEntry {
  final String name;

  ChatListEntry(this.name);
}
