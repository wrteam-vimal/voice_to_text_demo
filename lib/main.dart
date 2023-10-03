import 'package:flutter/material.dart';
import 'package:speech_to_text_demo/homeScreen.dart';

Future<void> main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class GlobalScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const BouncingScrollPhysics();
  }
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: GlobalScrollBehavior(),
            child: child!,
          );
        },
        debugShowCheckedModeBanner: false,
        title: "egrocer",
        home: const HomeScreen(),
      ),
    );
  }
}
