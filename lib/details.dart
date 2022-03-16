import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            Hero(
              tag: 'test',
              child: Container(
                height: 300,
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                    image: Image.network(
                      'https://images.freeimages.com/images/large-previews/89a/one-tree-hill-1360813.jpg',
                      fit: BoxFit.cover,
                    ).image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: screenSize.height * .7,
                width: screenSize.width,
                decoration: const BoxDecoration(
                  color: Color(0xff1e2125),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          width: 70,
                          height: 6,
                          decoration: const BoxDecoration(
                            color: Color(0xff848a94),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                          leading: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                              'https://images.freeimages.com/images/large-previews/89a/one-tree-hill-1360813.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                          subtitle: const Text(
                            'organiszam',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: const BoxDecoration(
                              color: Color(0xff3b3f44),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: screenSize.height * 0.6,
                        width: screenSize.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: const BoxDecoration(
                          color: Color(0xff26292f),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  Container(
                                    width: 60,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff848a94),
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'FRL DEC With - Mon ',
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 78, 38, 187),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Nocturnal and Unusual \nvisit',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 30,
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Text(
                                              'Louvre sample text',
                                              style: TextStyle(
                                                color: Colors.white60,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      Container(
                                        padding: const EdgeInsets.all(20),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(255, 40, 43, 48),
                                        ),
                                        child: Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff494f57),
                                          ),
                                          child: const Icon(
                                            Icons.heart_broken,
                                            color: Colors.red,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 40),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(15),
                                      primary: const Color(0xff5d59d8),
                                    ),
                                    child: const Text(
                                      'Get Ticket',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 15,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color.fromARGB(255, 255, 255, 255)),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
