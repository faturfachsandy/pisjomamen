import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  static const List<String> desc = [
    "Pisang Ijo Mameen Samarinda",
    "Dengan ciri khas kuahnya yang kental beraroma daun pandan, manis dan gurihnya pas. Sirup yang kami sajikan pun menggunakan Sirup DHT asli khas kota Makassar. Porsinya dijamin bikin kenyang dan nagih, yuk cobain pisjo mameen sekarang!",
    "images/logo.png",
    "(+62) 853-8812-2333",
    "Hari Senin - Sabtu (11:00 - 18:00) / Hari Minggu Tutup",
    "Jalan KH Abdurrasyid exs. Basuki Rahmat 2 No.54 RT.03, Kecamatan Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75242, Indonesia",
  ];

  static const List<String> collection = [
    "images/pisjo.png",
    "images/pisjo tampah.png",
    "images/pisjo mika2.png",
    "images/pisjo bowl.png",
    "images/pisjo tampah1.png",
    "images/pisjo mika1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return MobileStorePage(desc: desc, collection: collection);
          } else {
            return WebStorePage(desc: desc, collection: collection);
          }
        },
      ),
    );
  }
}

class MobileStorePage extends StatelessWidget {
  final List<String> desc;
  final List<String> collection;

  const MobileStorePage({Key? key, required this.desc, required this.collection}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(desc[2]),
          ),

          Container(
            width: double.infinity,
            //height: 60,
            padding: const EdgeInsets.all(5.0),
            child: Text(
              desc[0],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            //height: 60,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  desc[1],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ), 
            ),
          ),

          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: collection.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "\nKontak",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.local_phone,
                    size: 40,
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    desc[3],
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              ],
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.access_time,
                    size: 40,
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    desc[4],
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              ],
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.location_on,
                    size: 40,
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    desc[5],
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

class WebStorePage extends StatelessWidget {
  final List<String> desc;
  final List<String> collection;
  const WebStorePage({Key? key, required this.desc, required this.collection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          Container(
            width: double.infinity,
            //height: 60,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              desc[0],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            //height: 60,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Expanded(
                  child: Container(
                    width: 320,
                    height: 320,
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(desc[2]),
                  ), 
                ),

                Expanded(
                  child: Container(
                    width: double.infinity,
                    //height: 60,
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          desc[1],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ), 
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: collection.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "\nKontak",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.local_phone,
                    size: 40,
                  ),
                ),
              ),

              Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    desc[3],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),

              ],
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.access_time,
                    size: 40,
                  ),
                ),
              ),

              Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    desc[4],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),

              ],
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[

              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.location_on,
                    size: 40,
                  ),
                ),
              ),

              Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    desc[5],
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}