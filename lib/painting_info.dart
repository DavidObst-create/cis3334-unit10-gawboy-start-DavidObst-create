class PaintingInfo {

  int num = 0;
  String imageFile = "";
  String catagory = "";
  String name = "";
  String gawboyDescription = "";
  String gawboyAudio = "";
  String JourdainAnishinaabe = "";
  String JourdainEnglish = "";
  String JourdainAudio = "";

  PaintingInfo(this.num, this.imageFile, this.catagory, this.name);

  PaintingInfo.fromJson(Map<String, dynamic> json)
      : num = json['num'],
        imageFile = json['imageFile'],
        catagory = json['catagory'],
        name = json['name'],
        gawboyDescription = json['GawboyDescription'],
        gawboyAudio = json['GawboyAudio'],
        JourdainAnishinaabe = json['JourdainAnishinaabe'],
        JourdainEnglish = json['JourdainEnglish'],
        JourdainAudio = json['JourdainAudio'];

  Map<String, dynamic> toJson() => {
    'num': num,
    'imageFile': imageFile,
    'catagory': catagory,
    'name': name,
    'GawboyDescription': gawboyDescription,
    'GawboyAudio': gawboyAudio,
    'JourdainAnishinaabe': JourdainAnishinaabe,
    'JourdainEnglish': JourdainEnglish,
    'JourdainAudio': JourdainAudio,
  };

  setGawboyDescription(String newDescription) {
    gawboyDescription = newDescription;
  }

  setGawboyAudio(String newgawboyAudio) {
    gawboyAudio = newgawboyAudio;
  }

}
