import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  final videos = [
    VideoMoments('lib/imgs/mugenvsjin.jpg', '38fN3-0RlIA', 'Mugen vs Jin'),
    VideoMoments(
        'lib/imgs/mugenVsUmanosuke.jpg', 'huh1wvA3Bgw', 'Mugen vs. Umanosuke'),
    VideoMoments(
        'lib/imgs/jinvskariya.jpg', '_YAZQwkEUwg', 'Jin vs. Kariya Kagetoki'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Mejores momentos'),
            ),
            body: Column(children: [
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(videos[index].image),
                        title: Text(videos[index].title),
                        textColor: Colors.grey[800],
                        horizontalTitleGap: 30,
                        subtitle: const Text('The best xdd'),
                        minLeadingWidth: 95,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Video(
                                video: videos[index],
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ),
            ])));
  }
}

class Video extends StatefulWidget {
  final VideoMoments video;

  const Video({required this.video});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.videoID,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.video.title,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Moments()),
              );
            },
            child: const Text('Volver'),
          )
        ],
      )),
    );
  }
}

class VideoMoments {
  String image;
  String videoID;
  String title;

  VideoMoments(this.image, this.videoID, this.title);
}
