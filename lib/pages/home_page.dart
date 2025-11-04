import 'package:flashcard_app/animations/fade_in_animation.dart';
import 'package:flashcard_app/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/words.dart';
import '../components/home_page/topic_tile.dart';
import '../configs/constants.dart';
import '../notifiers/flashcards_notifier.dart';
import 'package:flashcard_app/pages/profile_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _topics = [];

  @override
  initState() {
    for (var t in words) {
      if (!_topics.contains(t.topic)) {
        _topics.add(t.topic);
      }

      _topics.sort();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.04;

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        toolbarHeight: size.height * 0.15,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Provider.of<FlashcardsNotifier>(context, listen: false).setTopic(topic: 'Settings');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                  },
                  child: SizedBox(
                    width: size.width * kIconPadding,
                    child: Image.asset('assets/images/Settings.png'),
                  ),
                ),
                SizedBox(height: size.height * kIconPadding),
              ],
            ),
            const FadeInAnimation(
                child: const
                Text('English Flashcards'
                )),

            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfilePage()),
                    );
                  },
                  child: SizedBox(
                    width: size.width * kIconPadding,
                    child: Image.asset('assets/images/avata.png'),
                  ),
                ),
                SizedBox(height: size.height * kIconPadding),
              ],
            ),

          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: widthPadding, right: widthPadding),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              expandedHeight: size.height * 0.40,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.all(size.width * 0.10),
                  child: FadeInAnimation(child: Image.asset('assets/images/thongminh.png')),
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: _topics.length,
                (context, index) => TopicTile(topic: _topics[index]),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
