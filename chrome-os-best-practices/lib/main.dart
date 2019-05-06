import 'package:flutter/material.dart';


final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light
);
final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent
);
void main() {
  runApp(new FriendlychatApp());
}

class FriendlychatApp extends StatelessWidget {
  final String name = "Kenneth Ford";

  @override
  Widget build(BuildContext build) {
    return new MaterialApp(
      title: "Friendlychat",
      theme: Theme.of(build).platform == TargetPlatform.iOS ? kIOSTheme : kDefaultTheme,
      home: new ChatAppHomePage(title: "Friendlychat"),
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
  final List<ChatListEntry> chats = new List<ChatListEntry>();

  @override
  Widget build(BuildContext context) {
    chats.add(ChatListEntry("Person 1"));
    chats.add(ChatListEntry("Person 2"));
    chats.add(ChatListEntry("Person 3"));
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
          if (constraints.maxWidth > 800)
            return TwoPaneChatLayout(chatEntries: chats);
          else
            return ChatListScreen(chatEntries: chats);
        },
      ),
    );
  }
}

// Code layout in row
class TwoPaneChatLayout extends StatelessWidget {
  final List<ChatListEntry> chatEntries;

  TwoPaneChatLayout({Key key, @required this.chatEntries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Container(
          child: ChatListScreen(chatEntries: chatEntries),
          constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
        ),
        VerticalDivider(),
        new Flexible(
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
            leading: new CircleAvatar(
                child: new Text(chatEntries[index].name[0])
            ),
            title: Text(chatEntries[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                      contactName: chatEntries[index].name
                  ),
                ),
              );
            },
          );
        }
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  final String contactName;

  ChatScreen({Key key, @required this.contactName}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new ChatScreenState(contactName: contactName);
  }
}

class ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  final String contactName;

  ChatScreenState({@required this.contactName}) : super();

  bool _isComposing = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            )
          ),
          new Divider(height: 1.0),
          new Container(
            decoration: new BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          )
        ],
      )
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
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
                child: new TextField(
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                  decoration: new InputDecoration.collapsed(hintText: "Send a message"),
                  onChanged: (String text) {
                    setState(() {
                      _isComposing = text.length > 0;
                    });
                  },
                )
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(                                            //modified
                  icon: new Icon(Icons.send),
                  onPressed: _isComposing ?
                      () =>  _handleSubmitted(_textController.text) : null,
                )
            )
          ],
        )
      )
    );
  }

  void _handleSubmitted (String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    ChatMessage message = ChatMessage(
      text: text,
      animationController: new AnimationController(
          duration: new Duration(milliseconds: 200),
          vsync: this
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
    return new SizeTransition(
    sizeFactor: new CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut
    ),
    axisAlignment: 0.0,
    child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(child: new Text(name[0])),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(name, style: Theme.of(context).textTheme.subhead),
                  new Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: new Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class ChatListEntry {
  final String name;

  ChatListEntry(this.name);
}