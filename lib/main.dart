import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: After()),
      debugShowCheckedModeBanner: false,
    );
  }
}

class After extends StatefulWidget {
  const After({Key? key}) : super(key: key);

  @override
  State<After> createState() => _AfterState();
}

class _AfterState extends State<After> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Accueil()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashSecond()),
    );
  }
}

class SplashSecond extends StatefulWidget {
  const SplashSecond({Key? key}) : super(key: key);

  @override
  State<SplashSecond> createState() => _SplashSecondState();
}

class _SplashSecondState extends State<SplashSecond> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/splashsecond.jpg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              color: Color(0xFFEF7B5E).withOpacity(0.8),
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/splash.png",
                      width: 270,
                      height: 270,
                    ),
                    Text(
                      "Ecoutez de la musique Africaine, c’est illimité",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    List photoArtistesList = [
      "assets/images/artistes/angelique.png",
      "assets/images/artistes/ayra.png",
      "assets/images/artistes/burna.png",
      "assets/images/artistes/ed.png",
      "assets/images/artistes/eminem.png",
      "assets/images/artistes/justin.png",
      "assets/images/artistes/tems.png",
      "assets/images/artistes/vano.png",
      "assets/images/artistes/wizkid.png",
      "assets/images/artistes/zeynab.png",
    ];
    List nomArtistesList = [
      "Angelique Kijo",
      "Ayra Starr",
      "Burna Boy",
      "Ed Sheeran",
      "Eminem",
      "Justin Bieber",
      "Tems",
      "Vano Baby",
      "Wizkid",
      "Zeynab",
    ];
    List titreArtisteList = [
      "Agolo",
      "Sability",
      "On the low",
      "Perfect",
      "Gdzilla",
      "Ghost",
      "Free Mind",
      "Diyo",
      "Joro",
      "Noctambule",
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 70,
              alignment: Alignment.center,
              child: Image.asset("assets/images/logoorange.png"),
            ),
            Container(
              alignment: Alignment.center,
              color: Color(0xFFEF7B5E),
              child: ButtonBar(
                buttonPadding: EdgeInsets.symmetric(horizontal: 25),
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEF7B5E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.library_music_rounded,
                              size: 14,
                            ),
                            Text(
                              'BIBLIOTHÈQUE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEF7B5E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.headphones,
                              size: 14,
                            ),
                            Text(
                              'PODCAST',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEF7B5E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => menuRadio()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.radio,
                              size: 14,
                            ),
                            Text(
                              'RADIO',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200, mainAxisExtent: 170),
                padding: const EdgeInsets.all(25),
                children: nomArtistesList.map((nomArtistes) {
                  int index = nomArtistesList.indexOf(nomArtistes);
                  return Stack(
                    children: [
                      Image.asset(
                        photoArtistesList[index],
                        width: 150,
                        height: 150,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 150,
                          width: 150,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  titreArtisteList[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w900),
                                  textAlign: TextAlign.center,
                                )
                              ])),
                      Container(
                          alignment: Alignment.center,
                          height: 150,
                          width: 150,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/images/logoorange.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  nomArtistes,
                                  style: TextStyle(
                                      color: Color(0xFFEF7B5E),
                                      fontSize: 15,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w900),
                                  textAlign: TextAlign.center,
                                ),
                              ])),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class menuRadio extends StatefulWidget {
  const menuRadio({Key? key}) : super(key: key);

  @override
  State<menuRadio> createState() => _menuRadioState();
}

class _menuRadioState extends State<menuRadio> {
  List NomPaysList = [
    "Bénin",
    "Algérie",
    "Togo",
    "Afrique du Sud",
    "Gabon",
    "Ghana",
    "Mali",
    "Cote d'Ivoire",
    "Nigeria",
  ];
  List DrapeauPaysList = [
    "assets/images/drapeaux/benin.png",
    "assets/images/drapeaux/algerie.png",
    "assets/images/drapeaux/togo.png",
    "assets/images/drapeaux/sudafrique.png",
    "assets/images/drapeaux/gabon.png",
    "assets/images/drapeaux/ghana.png",
    "assets/images/drapeaux/mali.png",
    "assets/images/drapeaux/cotedivoire.png",
    "assets/images/drapeaux/nigeria.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 70,
              alignment: Alignment.center,
              child: Image.asset("assets/images/logoorange.png"),
            ),
            Container(
              alignment: Alignment.center,
              color: Color(0xFFEF7B5E),
              child: ButtonBar(
                buttonPadding: EdgeInsets.symmetric(horizontal: 25),
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEF7B5E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.library_music_rounded,
                              size: 14,
                            ),
                            Text(
                              'BIBLIOTHÈQUE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEF7B5E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.headphones,
                              size: 14,
                            ),
                            Text(
                              'PODCAST',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEF7B5E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => menuRadio()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.radio,
                              size: 14,
                            ),
                            Text(
                              'RADIO',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(height: 5, color: Color(0xFFEF7B5E)),
            Container(
                child: OverflowBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                    child: const Text('Pays',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    onPressed: () {}),
                TextButton(
                    child: const Text('Genre',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFEF7B5E))),
                    onPressed: () {}),
                TextButton(
                    child: const Text('Langue',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFEF7B5E))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => langues()));
                    }),
                TextButton(
                    child: const Text('Réseaux',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFEF7B5E))),
                    onPressed: () {}),
              ],
            )),
            Divider(height: 5, color: Color(0xFFEF7B5E)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                child: ListView(
                  children: NomPaysList.map((nomPays) {
                    int index = NomPaysList.indexOf(nomPays);
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 400,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                DrapeauPaysList[index],
                                height: 100,
                                width: 60,
                              )
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(nomPays,style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xFFEF7B5E)),)
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class langues extends StatefulWidget {
  const langues({Key? key}) : super(key: key);

  @override
  State<langues> createState() => _languesState();
}

class _languesState extends State<langues> {
  @override
  Widget build(BuildContext context) {
    List LangueList = [
      "Français",
      "Anglais",
      "Japonais",
      "Espagnol",
      "Portugais",
      "Arabe"
    ];
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 70,
            alignment: Alignment.center,
            child: Image.asset("assets/images/logoorange.png"),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFFEF7B5E),
            child: ButtonBar(
              buttonPadding: EdgeInsets.symmetric(horizontal: 25),
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEF7B5E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.library_music_rounded,
                            size: 14,
                          ),
                          Text(
                            'BIBLIOTHÈQUE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEF7B5E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.headphones,
                            size: 14,
                          ),
                          Text(
                            'PODCAST',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEF7B5E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => menuRadio()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.radio,
                            size: 14,
                          ),
                          Text(
                            'RADIO',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(height: 5, color: Color(0xFFEF7B5E)),
          Container(
              child: OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                      child: const Text('Pays',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFEF7B5E))),
                      onPressed: () {}),
                  TextButton(
                      child: const Text('Genre',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFEF7B5E))),
                      onPressed: () {}),
                  TextButton(
                      child: const Text('Langue',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      onPressed: () {}),
                  TextButton(
                      child: const Text('Réseaux',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFEF7B5E))),
                      onPressed: () {}),
                ],
              )),
          Divider(height: 5, color: Color(0xFFEF7B5E)),
          Expanded(
            child: ListView(
              children: LangueList.map((langue) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(langue, style: TextStyle(color: Color(0xFFEF7B5E), fontFamily: "Montserrat",fontWeight: FontWeight.w600,fontSize: 20,),),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

