import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      home: MyHomePage(),
    );
  }
}

Widget mainAlbumImage() {
  return Container(
    width: double.infinity,
    height: 450,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(48.0),
      ),
      image: DecorationImage(
        image:
            AssetImage("assets/music-pic.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget topAppBar() {
  return Padding (
    padding: EdgeInsets.only(
      left: 16.0,
      top: 40,
      right: 16.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
           icon: Icon(Icons.info_outline, color: Colors.white),
          onPressed: () {},
        )
      ],
    ),
  );
}

Widget topAppBarInner(BuildContext context) {
  return Padding (
    padding: EdgeInsets.only(
      left: 16.0,
      top: 40,
      right: 16.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
          Navigator.pop(context);
        },
        ),
        Text(
          'Artist', 
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
           icon: Icon(Icons.info_outline, color: Colors.white),
          onPressed: () {},
        )
      ],
    ),
  );
}

Widget mainAlbumImageInner() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      image: DecorationImage(
        image:
          AssetImage("assets/music-pic.jpg"
        ),
        fit: BoxFit.cover,
        colorFilter: new ColorFilter.mode(Colors.red.withOpacity(0.8), BlendMode.luminosity),
      ),
    ),
  );
}

Widget albumTitle() {
  return Positioned (
    top: 330,
    left: 37,
    child: Column(
      children: <Widget>[
        Text(
          'Tranding 2020',
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
        Text(
          'Tomorrowland Hits',
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 45,
              letterSpacing: .5,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget playSong(BuildContext context) {
  return Positioned(
    top: 420,
    right: 30,
    child: FloatingActionButton(
      child: Icon(
        Icons.play_arrow,
        color: Colors.white,
        size: 30.0,
      ),
      backgroundColor: Color(0xFF7D9AFF),
      onPressed: () {
        Navigator.push(context, _MusicPlayer());
      },
    ),
  );
}

Widget songImage() {
  return Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      image: DecorationImage(
        image:
            AssetImage("assets/music-pic-inner.jpg"),
        fit: BoxFit.contain,
      ),
    ),
  );
}

Widget durationMusic() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "1:20",
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 12.0,
        ),
      ),
      Text(
        "4:45",
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 12.0,
        ),
      ),
    ],
  );
}

Widget progressIndicator() {
  return SizedBox(
    height: 2.0,
    width: double.infinity,
    child: LinearProgressIndicator(
      value: 0.3,
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.blueAccent,
      ),
      backgroundColor: Colors.grey.withOpacity(0.5),
    ),
  );
}

Widget musicInfo() {
  return Expanded(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Sing me to sleep',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          'Alan Walker',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.blue,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget musicPlayer() {
  return Expanded(
    child: Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Icon(Icons.fast_rewind, color: Colors.white,),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.pause, color: Colors.white,),
            ),
          ),
          Expanded(
            child: Icon(Icons.fast_forward, color: Colors.white,),
          ),
        ],
      ),
    ),
  );
}

Widget controlVolume() {
    return Expanded(
      child: Center(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.volume_mute,
              color: Colors.white.withOpacity(0.7),
            ),
            Expanded(
              child: Slider(
                min: 0.0,
                max: 1.0,
                value: 0.5,
                activeColor: Colors.white,
                inactiveColor: Colors.grey.withOpacity(0.7),
                onChanged: (value) {},
              ),
            ),
            Icon(
              Icons.volume_up,
              color: Colors.grey.withOpacity(0.7),
            ),
          ],
        ),
      ),
    );
  }

Widget playerScreen() {
  return Container (
    margin: EdgeInsets.only(
      top: 110,
    ),
    padding: EdgeInsets.only(
      top: 60,
    ),
    decoration: new BoxDecoration(
      color: Colors.black.withOpacity(0.7),
      borderRadius: new BorderRadius.only(
        topLeft:  const Radius.circular(48.0),
        topRight: const Radius.circular(48.0))
    ),
    
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
          songImage(),
          SizedBox(height: 36.0),
          progressIndicator(),
          SizedBox(height: 3.0),
          durationMusic(),
          SizedBox(height: 35.0),
          musicInfo(),
          SizedBox(height: 5.0),
          musicPlayer(),
           SizedBox(height: 5.0),
          controlVolume(),
        ],
      ),
    ),
  );
}


class _MusicPlayer extends MaterialPageRoute<Null> {
  _MusicPlayer()
    :super(builder:(BuildContext context){
      return Scaffold(
        body: Stack(
          children: <Widget>[
            mainAlbumImageInner(),
            topAppBarInner(context),
            playerScreen(),
          ],
        ),
      );
    }
  );
}

Widget popularSection() {
  return Padding(
    padding: EdgeInsets.only(
      top: 480,
      left: 30,
      right: 15,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Latest',
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Text(
                'Show All',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}



Widget songList() {
  return Padding(
    padding: EdgeInsets.only(
      top: 550,
      left: 15,
      right: 15,
    ),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Container(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset("assets/music-pic-inner.jpg"),
            ),
          ),
          title: Text(
            'Sing me to sleep',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          trailing: Icon(Icons.more_horiz),
        ),
        Divider(),
        ListTile(
          leading: Container(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset("assets/music-pic-2.jpg"),
            ),
          ),
          title: Text(
            'You Belong With Me',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          trailing: Icon(Icons.more_horiz),
        ),
        Divider(),
        ListTile(
          leading: Container(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset("assets/music-pic-3.jpg"),
            ),
          ),
          title: Text(
            'Complicated (Dimitri Vegas)',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          trailing: Icon(Icons.more_horiz),
        ),
        Divider(),
        ListTile(
          leading: Container(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset("assets/music-pic-4.jpg"),
            ),
          ),
          title: Text(
            'love the way you lie',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          trailing: Icon(Icons.more_horiz),
        ),
      ],
    ),
  );
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          mainAlbumImage(),
          topAppBar(),
          albumTitle(),
          playSong(context),
          popularSection(),
          songList(),
        ],
      ),
    );
  }
}
