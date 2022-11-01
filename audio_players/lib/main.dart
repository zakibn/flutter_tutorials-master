// Enable Swiping for Your Audio Player - Episode #5 - Flutter Audio Player UI Design Tutorial
// Florian Prümer 
//  هاذا فقط باه نعرف مزال ماهوش مخدوم مليح 

import 'package:audio_players/audio_player_background_playlist.dart';
import 'package:audio_players/audio_player_local_asset.dart';
import 'package:audio_players/audio_player_url.dart';
import 'package:audio_players/design_examples/audio_player_circular_progress.dart';
import 'package:audio_players/design_examples/audio_player_linear_progress.dart';
import 'package:audio_players/design_examples/audio_player_bottom_slider.dart';
import 'package:audio_players/design_examples/audio_player_swiper.dart';
import 'package:audio_players/design_examples/audio_player_yellow_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),

        /// Swap classes here:
        ///       - AudioPlayerUrl():
        ///           -> plays audio file from a url source (can be local or on the Internet)
        ///
        ///       - AudioPlayerLocalAsset():
        ///           -> plays audio file from local asset (stored in /assets)
        ///
        ///       - AudioPlayerBackgroundPlaylist():
        ///           -> plays multiple songs from URL + allows background playing with sound control in notification bar
        ///
        ///       - AudioPlayerLinearProgress():
        ///           -> example design of an audio player with linear progress bar
        ///
        ///       - AudioPlayerCircularProgress():
        ///           -> example design of an audio player with circular progress bar

        home: AudioPlayerSwiper());
  }
}
