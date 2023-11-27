import 'dart:ui';
import 'package:cis3334_unit10_gawboy/load_painting_info.dart';
import 'package:flutter/material.dart';
import 'painting_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'XKCD Comic List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// ==========================================================================
class _MyHomePageState extends State<MyHomePage> {

  List<PaintingInfo> gawboyPaintings = [];                // the list of paintings
  LoadPaintingInfo paintLoader = new LoadPaintingInfo();
  final PageController ctrl = PageController();

  // Load the painting information when the app starts
  @override
  void initState() {
    super.initState();
    gawboyPaintings = paintLoader.InitInCode();
    setState(() {});
  }

  Widget _buildPaintingCard(int position) {
    return Column(
      children: [
        Text(gawboyPaintings[position].name),
        Text(gawboyPaintings[position].gawboyDescription),
        Image(
          image: AssetImage('assets/images/' + gawboyPaintings[position].imageFile
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: PageView.builder(
           itemCount: gawboyPaintings.length,
            controller: ctrl,
            itemBuilder: (context, position) {
              return _buildPaintingCard(position);
            },
          ),
        ),
      ),
    );
  }
}