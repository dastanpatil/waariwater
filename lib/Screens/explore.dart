import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  Explore({Key? key}) : super(key: key);

  State<Explore> createState() => ExploreState();
}

class ExploreState extends State<Explore> {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 14, 70, 144),
      Color.fromARGB(255, 108, 180, 232)
    ],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "FickleFlight",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            // color: Colors.black,
            foreground: Paint()..shader = linearGradient,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg"),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          //   child: CircleAvatar(
          //     radius: 30,
          //     child: ClipOval(
          //       child: Image.asset(
          //         "./assets/images/waari-logo.png",
          //         width: 120,
          //         fit: BoxFit.fill,
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://images.pexels.com/photos/2082103/pexels-photo-2082103.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        // height: 200,
                        width: double.infinity,
                      ),
                    ),
                    const Positioned(
                      right: 20,
                      top: 10,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "Paris",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: RichText(
                          text: const TextSpan(
                              text: "From\n",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              children: [
                            TextSpan(
                                text: "\$1299",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ])),
                      // child: Text(
                      //   "\$1299",
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 22),
                      // ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.circle_rounded,
                        size: 15,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 15,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 15,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Upcoming Flight",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "SIN",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Singapore",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const Icon(Icons.flight_land),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "LAX",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Los angeles",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Departs on: 1 May, 08:00 AM",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text("4 days to go",
                        style: TextStyle(color: Colors.black87))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            // color: Colors.amber,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Icon(Icons.flight_takeoff_sharp)),
                        const Text("Flight")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
