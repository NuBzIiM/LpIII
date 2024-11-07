import 'package:flutter/material.dart';
import 'package:projeto_loja/firebase_options.dart';
import 'package:projeto_loja/user/pages/user_add_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(const MyApp());
}

Future<void> initializeApp() async{
  FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 222, 96, 58)),
        useMaterial3: true,
      ),
      home: UserAddPage(),
    );
  }
}
