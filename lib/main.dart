import 'package:flutter/material.dart';
import 'package:podcast_app/app/reels/presentation/reels_screen.dart';
import 'package:podcast_app/core/app_constants.dart';
import 'package:podcast_app/core/network_manager/network_manager.dart';
import 'package:podcast_app/core/service_locator/service_locator_config.dart';

void main() async {
  //Setting base url when app starts
  NetworkManager.instance.init(baseUrl);
  await configureServiceLocators();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcast App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ReelsScreen(),
    );
  }
}
