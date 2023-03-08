class Database {
  int id;
  String title;
  String image;
  List<String> pages;

  Database({required this.id, required this.title, required this.image, required this.pages});

  int getId() => id;
  set setId(int id) => this.id = id;

  String getTitle() => title;
  set setTitle(String title) => this.title = title;

  String getImage() => image;
  set setImage(String image) => this.image = image;

  List<String> getPages() => pages;
  set setPages(List<String> pages) => this.pages = pages;
}

var data = [{
  'id': 1,
  'title': 'ប្រធានបទទី១',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing001.jpg",
    "assets/images/writing002.jpg",
    "assets/images/writing003.jpg",
    "assets/images/writing004.jpg",
  ]
}, {
  'id': 2,
  'title': 'ប្រធានបទទី២',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing005.jpg",
    "assets/images/writing006.jpg",
    "assets/images/writing007.jpg",
    "assets/images/writing008.jpg",
    "assets/images/writing009.jpg",
  ]
}, {
  'id': 3,
  'title': 'ប្រធានបទទី៣',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing010.jpg",
    "assets/images/writing011.jpg",
    "assets/images/writing012.jpg",
    "assets/images/writing013.jpg",
  ]
}, {
  'id': 4,
  'title': 'ប្រធានបទទី៤',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing014.jpg",
    "assets/images/writing015.jpg",
    "assets/images/writing016.jpg",
    "assets/images/writing017.jpg",
  ]
}, {
  'id': 5,
  'title': 'ប្រធានបទទី៥',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing018.jpg",
    "assets/images/writing019.jpg",
    "assets/images/writing020.jpg",
    "assets/images/writing021.jpg",
  ]
}, {
  'id': 6,
  'title': 'ប្រធានបទទី៦',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing022.jpg",
    "assets/images/writing023.jpg",
    "assets/images/writing024.jpg",
  ]
}, {
  'id': 7,
  'title': 'ប្រធានបទទី៧',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing025.jpg",
    "assets/images/writing026.jpg",
    "assets/images/writing027.jpg",
  ]
}, {
  'id': 8,
  'title': 'ប្រធានបទទី៨',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing028.jpg",
    "assets/images/writing029.jpg",
    "assets/images/writing030.jpg",
  ]
}, {
  'id': 9,
  'title': 'ប្រធានបទទី៩',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing031.jpg",
    "assets/images/writing032.jpg",
    "assets/images/writing033.jpg",
    "assets/images/writing034.jpg",
  ]
}, {
  'id': 10,
  'title': 'ប្រធានបទទី១០',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing035.jpg",
    "assets/images/writing036.jpg",
    "assets/images/writing037.jpg",
    "assets/images/writing038.jpg",
  ]
}, {
  'id': 11,
  'title': 'ប្រធានបទទី១១',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing039.jpg",
    "assets/images/writing040.jpg",
    "assets/images/writing041.jpg",
    "assets/images/writing042.jpg",
  ]
}, {
  'id': 12,
  'title': 'ប្រធានបទទី១២',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing043.jpg",
    "assets/images/writing044.jpg",
    "assets/images/writing045.jpg",
    "assets/images/writing046.jpg",
    "assets/images/writing047.jpg",
    "assets/images/writing048.jpg",
  ]
}, {
  'id': 13,
  'title': 'ប្រធានបទទី១៣',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing049.jpg",
    "assets/images/writing050.jpg",
    "assets/images/writing051.jpg",
    "assets/images/writing052.jpg",
  ]
}, {
  'id': 14,
  'title': 'ប្រធានបទទី១៤',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing053.jpg",
    "assets/images/writing054.jpg",
    "assets/images/writing055.jpg",
    "assets/images/writing056.jpg",
  ]
}, {
  'id': 15,
  'title': 'ប្រធានបទទី១៥',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing057.jpg",
    "assets/images/writing058.jpg",
    "assets/images/writing059.jpg",
  ]
}, {
  'id': 16,
  'title': 'ប្រធានបទទី១៦',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing060.jpg",
    "assets/images/writing061.jpg",
    "assets/images/writing062.jpg",
  ]
}, {
  'id': 17,
  'title': 'ប្រធានបទទី១៧',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing063.jpg",
    "assets/images/writing064.jpg",
    "assets/images/writing065.jpg",
    "assets/images/writing066.jpg",
  ]
}, {
  'id': 18,
  'title': 'ប្រធានបទទី១៨',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing067.jpg",
    "assets/images/writing068.jpg",
    "assets/images/writing069.jpg",
  ]
}, {
  'id': 19,
  'title': 'ប្រធានបទទី១៩',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing070.jpg",
    "assets/images/writing071.jpg",
    "assets/images/writing072.jpg",
    "assets/images/writing073.jpg",
    "assets/images/writing074.jpg",
  ]
}, {
  'id': 20,
  'title': 'ប្រធានបទទី២០',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing075.jpg",
    "assets/images/writing076.jpg",
    "assets/images/writing077.jpg",
    "assets/images/writing078.jpg",
    "assets/images/writing079.jpg",
  ]
}, {
  'id': 21,
  'title': 'ប្រធានបទទី២១',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing080.jpg",
    "assets/images/writing081.jpg",
    "assets/images/writing082.jpg",
    "assets/images/writing083.jpg",
  ]
}, {
  'id': 22,
  'title': 'ប្រធានបទទី២២',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing084.jpg",
    "assets/images/writing085.jpg",
    "assets/images/writing086.jpg",
  ]
}, {
  'id': 23,
  'title': 'ប្រធានបទទី២៣',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing087.jpg",
    "assets/images/writing088.jpg",
    "assets/images/writing089.jpg",
    "assets/images/writing090.jpg",
  ]
}, {
  'id': 24,
  'title': 'ប្រធានបទទី២៤',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing091.jpg",
    "assets/images/writing092.jpg",
    "assets/images/writing093.jpg",
    "assets/images/writing094.jpg",
  ]
}, {
  'id': 25,
  'title': 'ប្រធានបទទី២៥',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing095.jpg",
    "assets/images/writing096.jpg",
    "assets/images/writing097.jpg",
    "assets/images/writing098.jpg",
    "assets/images/writing099.jpg",
  ]
}, {
  'id': 26,
  'title': 'ប្រធានបទទី២៦',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing100.jpg",
    "assets/images/writing101.jpg",
  ]
}, {
  'id': 27,
  'title': 'ប្រធានបទទី២៧',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing101.jpg",
    "assets/images/writing102.jpg",
  ]
}, {
  'id': 28,
  'title': 'ប្រធានបទទី២៨',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing102.jpg",
    "assets/images/writing103.jpg",
  ]
}, {
  'id': 29,
  'title': 'ប្រធានបទទី២៩',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing104.jpg",
    "assets/images/writing105.jpg",
  ]
}, {
  'id': 30,
  'title': 'ប្រធានបទទី៣០',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing105.jpg",
    "assets/images/writing106.jpg",
    "assets/images/writing107.jpg",
  ]
}, {
  'id': 31,
  'title': 'ប្រធានបទទី៣១',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing107.jpg",
    "assets/images/writing108.jpg",
  ]
}, {
  'id': 32,
  'title': 'ប្រធានបទទី៣២',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing108.jpg",
    "assets/images/writing109.jpg",
  ]
}, {
  'id': 33,
  'title': 'ប្រធានបទទី៣៣',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing109.jpg",
    "assets/images/writing110.jpg",
  ]
}, {
  'id': 34,
  'title': 'ប្រធានបទទី៣៤',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing110.jpg",
    "assets/images/writing111.jpg",
    "assets/images/writing112.jpg",
  ]
}, {
  'id': 35,
  'title': 'ប្រធានបទទី៣៥',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing112.jpg",
    "assets/images/writing113.jpg",
  ]
}, {
  'id': 36,
  'title': 'ប្រធានបទទី៣៦',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing113.jpg",
    "assets/images/writing114.jpg",
  ]
}, {
  'id': 37,
  'title': 'ប្រធានបទទី៣៧',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing114.jpg",
    "assets/images/writing115.jpg",
  ]
}, {
  'id': 38,
  'title': 'ប្រធានបទទី៣៨',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing115.jpg",
    "assets/images/writing116.jpg",
    "assets/images/writing117.jpg",
  ]
}, {
  'id': 39,
  'title': 'ប្រធានបទទី៣៩',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing117.jpg",
    "assets/images/writing118.jpg",
  ]
}, {
  'id': 40,
  'title': 'ប្រធានបទទី៤០',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing118.jpg",
    "assets/images/writing119.jpg",
    "assets/images/writing120.jpg",
  ]
}, {
  'id': 41,
  'title': 'ប្រធានបទទី៤១',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing120.jpg",
    "assets/images/writing121.jpg",
  ]
}, {
  'id': 42,
  'title': 'ប្រធានបទទី៤២',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing121.jpg",
    "assets/images/writing122.jpg",
  ]
}, {
  'id': 43,
  'title': 'ប្រធានបទទី៤៣',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing122.jpg",
    "assets/images/writing123.jpg",
  ]
}, {
  'id': 44,
  'title': 'ប្រធានបទទី៤៤',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing123.jpg",
    "assets/images/writing124.jpg",
  ]
}, {
  'id': 45,
  'title': 'ប្រធានបទទី៤៥',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing124.jpg",
    "assets/images/writing125.jpg",
  ]
}, {
  'id': 46,
  'title': 'ប្រធានបទទី៤៦',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing125.jpg",
    "assets/images/writing126.jpg",
  ]
}, {
  'id': 47,
  'title': 'ប្រធានបទទី៤៧',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing126.jpg",
    "assets/images/writing127.jpg",
  ]
}, {
  'id': 48,
  'title': 'ប្រធានបទទី៤៨',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing128.jpg",
    "assets/images/writing129.jpg",
  ]
}, {
  'id': 49,
  'title': 'ប្រធានបទទី៤៩',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing129.jpg",
    "assets/images/writing130.jpg",
  ]
}, {
  'id': 50,
  'title': 'ប្រធានបទទី៥០',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing131.jpg",
    "assets/images/writing132.jpg",
  ]
}, {
  'id': 51,
  'title': 'ប្រធានបទទី៥១',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing132.jpg",
    "assets/images/writing133.jpg",
  ]
}, {
  'id': 52,
  'title': 'ប្រធានបទទី៥២',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing133.jpg",
    "assets/images/writing134.jpg",
  ]
}, {
  'id': 53,
  'title': 'ប្រធានបទទី៥៣',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing134.jpg",
    "assets/images/writing135.jpg",
    "assets/images/writing136.jpg",
  ]
}, {
  'id': 54,
  'title': 'ប្រធានបទទី៥៤',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing136.jpg",
    "assets/images/writing137.jpg",
    "assets/images/writing138.jpg",
  ]
}, {
  'id': 55,
  'title': 'ប្រធានបទទី៥៥',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing139.jpg",
    "assets/images/writing140.jpg",
  ]
}, {
  'id': 56,
  'title': 'ប្រធានបទទី៥៦',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing140.jpg",
    "assets/images/writing141.jpg",
    "assets/images/writing142.jpg",
  ]
}, {
  'id': 57,
  'title': 'ប្រធានបទទី៥៧',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing142.jpg",
    "assets/images/writing143.jpg",
    "assets/images/writing144.jpg",
  ]
}, {
  'id': 58,
  'title': 'ប្រធានបទទី៥៨',
  'face': 'assets/images/icon.png',
  'pages': [
    "assets/images/writing144.jpg",
    "assets/images/writing145.jpg",
  ]
}];