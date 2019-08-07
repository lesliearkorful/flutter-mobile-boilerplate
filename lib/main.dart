import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'providers/ExampleProvider.dart';
import 'routes.dart';
import 'services/serviceLocator.dart';
import 'ui/Home.dart';

void main() {
  setupServiceLocator();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(App());
  });
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ExampleProvider>.value(value: ExampleProvider()),
      ],
      child: MaterialApp(
        title: 'Bit Sika',
        routes: {
          UiRoutes.home: (_) => Home(),
        },
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.transparent,
        ),
      ),
    );
  }
}
