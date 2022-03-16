import 'package:flutter/material.dart';
import 'package:sample/details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff1b1d21),
      bottomNavigationBar: Container(
        height: 80,
        color: const Color(0xff1a1c20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.event,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(height: 6),
                Text(
                  'Account',
                  style: TextStyle(
                    color: Color(0xff5b5d60),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color.fromARGB(255, 255, 255, 255)),
                  child: const Icon(
                    Icons.event,
                    color: Colors.grey,
                    size: 18,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Event',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.dashboard,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(height: 6),
                Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Color(0xff5b5d60),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Parisd',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child:
                            Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 30),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff1f2326)),
                        child: const Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff1f2326)),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.grey,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (_, index) {
                    return menu(
                      '',
                      [
                        'All',
                        'Food',
                        'Sport',
                        'All',
                        'Food',
                      ][index],
                    );
                  }),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Popular Events',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 350,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Hero(
                        tag: 'test',
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => const DetailsScreen()));
                          },
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 250,
                                    width: screenSize.width * 0.7,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      image: DecorationImage(
                                        image: Image.network(
                                          'https://images.freeimages.com/images/large-previews/89a/one-tree-hill-1360813.jpg',
                                          fit: BoxFit.cover,
                                        ).image,
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius:
                                          const BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    'FRL DEC With - Mon ',
                                    style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Nocturnal and Unusual visit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Louvre',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 25,
                                bottom: 80,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: Color(0xff1f2326)),
                                    child: const Icon(
                                      Icons.heart_broken,
                                      color: Colors.grey,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget menu(String img, String text) {
    return Container(
      height: 80,
      width: 65,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        gradient:
            LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
          text != 'Food' ? const Color(0xff32373b) : const Color(0xff5d59d8),
          text != 'Food'
              ? const Color(0xff24292d)
              : const Color.fromARGB(255, 107, 104, 190)
        ]),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Color(0xff1f2326)),
            child: const Icon(
              Icons.menu,
              color: Colors.grey,
              // size: 20,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
