import 'dart:convert';

import 'package:flutter/services.dart';

import 'painting_info.dart';

class LoadPaintingInfo {
  List<PaintingInfo> paintings = [];

  Future<List<PaintingInfo>> InitWithJson() async {
    final String response =  await rootBundle.loadString('text/image_list2.json');

    final List<dynamic> data = await json.decode(response);
    paintings = [];
    for (dynamic it in data) {
      final PaintingInfo item = PaintingInfo.fromJson(it);    // Parse data for one DataItem
      paintings.add(item);                                // add item to items List
    }
    return paintings;
  }

  List<PaintingInfo> getPaintingList() {
    InitWithJson().then((value) => paintings=value);
    return paintings;
  }

  List<PaintingInfo> InitInCode(){
    PaintingInfo item = new PaintingInfo(1,'by_the_fire_1.jpg', 'By the Fire', 'Chippewa Camp Scene');
    item.setGawboyDescription('The series of paintings in which fire light was kind of common theme.');
    paintings.add(item);

    item = new PaintingInfo(2,'by_the_fire_2.jpg', 'By the Fire', 'Storyteller');
    item.setGawboyDescription('This is a cutout figure. It is painted on plywood and the plywood cutout kind of suggests a three dimensional form. This is a lady who is very good at telling stories sitting by the fire, her face is lit from underneath as she holding her audience spellbound.  In the foreground you can see some rocks. ');
    paintings.add(item);

    item = new PaintingInfo(3,'by_the_fire_3.jpg', 'By the Fire', 'Joining the Women');
    item.setGawboyDescription('This is a girls coming of age ceremony just a part of it. The ceremony would be rather long lasting. In this painting the older women or older relatives telling her wisdom among other things herbal medicine, the duties of womanhood.');
    paintings.add(item);

    item = new PaintingInfo(4,'by_the_fire_4.jpg', 'By the Fire', 'Joining the Women 2');
    item.setGawboyDescription('This was done on a plywood cut out. The plywood cut out was in a dome shape like a woman’s house and you have virtually the same type of scene.  ');
    paintings.add(item);

    item = new PaintingInfo(5,'by_the_fire_5.jpg', 'By the Fire', 'Storyteller 2');
    item.setGawboyDescription('This is another piece from the Storyteller group. The Storyteller group is one of the other figurines, you see that same rock down there in the lower part of the slide. This is a plywood cut out about 8" high like the other one and this is one of the listeners to the Storyteller. ');
    paintings.add(item);

    item = new PaintingInfo(6,'in_the_circle_1.jpg', 'In the Circle', 'Nanboujou and Mishipishu');
    item.setGawboyDescription('This was done in 1993.  The Nanboujou had wounded the great panther curly tail and the great panther offered the riches of world to anyone who could cure him.  ');
    paintings.add(item);

    item = new PaintingInfo(7,'in_the_circle_2.jpg', 'In the Circle', 'Lowering the Flag, Ball Club');
    item.setGawboyDescription('This was done in 1993.  The Nanboujou had wounded the great panther curly tail and the great panther offered the riches of world to anyone who could cure him.  ');
    paintings.add(item);

    item = new PaintingInfo(8,'in_the_circle_3.jpg', 'In the Circle', 'Veteran’s Farewell');
    item.setGawboyDescription('This was done in 1993.  The Nanboujou had wounded the great panther curly tail and the great panther offered the riches of world to anyone who could cure him.  ');
    paintings.add(item);

    return paintings;
  }

}
