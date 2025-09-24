// File: main.dart
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import './page/user/my_home.dart';
import './page/user/login.dart';

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) {
        return ('/user/myHome');
      },
    ),
    GoRoute(
      path: '/user/myHome',
      builder: (context, state) => MyHomePage(title: 'Flutter Demo Home Page'),
    ),
    GoRoute(path: '/user/login', builder: (context, state) => UserLoginPage()),
  ],
  redirect: (BuildContext context, GoRouterState state) {
    // return '/user/login';
  },
);

void main() {
  runApp(const QingLingPavilionApp());
}

class QingLingPavilionApp extends StatelessWidget {
  const QingLingPavilionApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'QingLingPavilion',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }
}
