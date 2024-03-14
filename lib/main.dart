import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'FittedBox Widget',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      /*body: const Center(
        child: FittedBox(
          child: Text(
            'This is the FittedBox Widget in Flutter, This app is linked to the debug service',
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
      ),*/
      /*body: FittedBox(
        child: Row(
          children: [
            Container(
              height: 200,
              width: 400,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.green,
            ),
          ],
        ),
      ),*/
      body: FittedBox(
        child: Column(
          children: [
            FittedBox(
              child: Container(
                height: 200,
                width: 400,
                color: Colors.red,
              ),
            ),
            FittedBox(
              child: Container(
                height: 200,
                width: 400,
                color: Colors.green,
              ),
            ),
            const FittedBox(
              child: Text(
                'This is the FittedBox Widget in Flutter, This app is linked to the debug service',
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 400,
                    color: Colors.red,
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
