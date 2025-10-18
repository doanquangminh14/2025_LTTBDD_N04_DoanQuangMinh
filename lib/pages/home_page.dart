import 'package:flutter/material.dart';
import '../data/words.dart';
import '../components/home_page/topic_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
   List<String> _topics = [];

  @override
  initState(){
    for(var t in words){
      if(!_topics.contains(t.topic)){
          _topics.add(t.topic);
      } 

    _topics.sort();

    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;
  final widthPadding = size.width* 0.04;


    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        toolbarHeight: size.height * 0.15,
        title: Text('English Flashcards'),
        centerTitle: true,
        elevation: 0,
        
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: widthPadding, right: widthPadding),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: size.height * 0.40,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding:  EdgeInsets.all(size.width * 0.10),
                  child: Text('home page image'),
                ),
              ),
            ),
            SliverGrid(delegate: SliverChildBuilderDelegate(
              childCount: _topics.length,
              (context, index) => TopicTile(topic: _topics[index]),
              ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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

