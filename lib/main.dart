import 'package:flutter/material.dart';
import 'package:flutter2_moda_app/detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.black,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.grey,
            icon: const Icon(Icons.camera_alt),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Moda App",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          //üst taraftaki profil listesi
          Container(
            height: 140,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani('assets/images/model1.jpeg',
                      'assets/images/chanellogo.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/images/model2.jpeg',
                      'assets/images/chloelogo.png'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/images/model3.jpeg',
                      'assets/images/louisvuitton.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/images/model1.jpeg',
                      'assets/images/chanellogo.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/images/model2.jpeg',
                      'assets/images/chloelogo.png'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/images/model3.jpeg',
                      'assets/images/louisvuitton.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          //Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/model1.jpeg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                    imgpath: "assets/images/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/images/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/modelgrid1.jpeg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgpath:
                                            "assets/images/modelgrid2.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/images/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/modelgrid2.jpeg",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgpath:
                                            "assets/images/modelgrid3.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/images/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          "assets/images/modelgrid3.jpeg",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.5)),
                          child: const Center(
                            child: Text(
                              "#Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.black,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.5)),
                          child: const Center(
                            child: Text(
                              "#Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.black,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      height: 20,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.2),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "1.7K",
                          style: TextStyle(
                              color: Colors.brown,
                              fontFamily: "Montserrat",
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.2),
                          size: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "325",
                          style: TextStyle(
                              color: Colors.brown,
                              fontFamily: "Montserrat",
                              fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 223,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2.3K",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontFamily: "Montserrat",
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: AssetImage(logoPath),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: const Text(
            "Follow",
            style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
          ),
        )
      ],
    );
  }
}
