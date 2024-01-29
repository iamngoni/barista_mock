import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import 'constants.dart';
import 'gen/fonts.gen.dart';
import 'injection.dart';

void main() {
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barista Mock',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: FontFamily.inter,
      ),
      home: const MyHomePage(title: 'Barista Mock'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.title,
    super.key,
  });
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: Container(
            height: context.height,
            width: context.width,
            padding: EdgeInsets.symmetric(
              vertical: sy(40),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: sy(20),
                ),
                Text(
                  'BARISTA',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(13),
                    letterSpacing: 7,
                  ),
                ),
                Text(
                  'COFFEE',
                  style: TextStyle(
                    color: const Color(0xFF6F4E37),
                    fontWeight: FontWeight.w600,
                    fontSize: sy(9),
                  ),
                ),
                SizedBox(
                  height: sy(20),
                ),
                SizedBox(
                  width: context.width,
                  height: sy(200),
                  child: PageView.builder(
                    itemCount: $availableCoffees.length,
                    controller: PageController(
                      viewportFraction: 0.6,
                    ),
                    itemBuilder: (context, index) {
                      return Center(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage($availableCoffees[index].image),
                              height: sy(150),
                            ),
                            SizedBox(
                              height: sy(10),
                            ),
                            Text(
                              $availableCoffees[index].name,
                              style: TextStyle(
                                color: Colors.brown.shade900,
                                fontWeight: FontWeight.w900,
                                fontSize: sy(18),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Drag Your Coffee',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(9),
                  ),
                ),
                SizedBox(
                  height: sy(20),
                ),
                Icon(
                  CupertinoIcons.arrow_down,
                  color: Colors.grey.withOpacity(0.5),
                  size: sy(20),
                ),
                SizedBox(
                  height: sy(20),
                ),
                Image(
                  image: const AssetImage('assets/images/plate.png'),
                  height: sy(80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove,
                      color: Colors.grey,
                      size: sy(20),
                    ),
                    SizedBox(
                      width: sx(20),
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontWeight: FontWeight.w900,
                        fontSize: sy(18),
                      ),
                    ),
                    SizedBox(
                      width: sx(20),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: sy(20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
