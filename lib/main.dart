import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/page/login_page.dart';
import 'package:provider_test/util/dependency_injection.dart';

import 'controller/home_controller.dart';
import 'controller/login_controller.dart';
import 'page/my_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DependencyInjection.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/login': (context) => ChangeNotifierProvider<LoginController>(
            create: (context) => LoginController(), child: LoginPage()),
        '/home': (context) => ChangeNotifierProvider<CountController>(
            create: (context) => CountController(),
            child: MyHomePage(title: 'Flutter Demo Home Page')),
      },
      initialRoute: '/login',
    );
  }
}
