import 'package:catalift_task/Screens/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/loginpage.dart';
import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget{
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute:'/login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins()
        )
      ),
      getPages: [
        GetPage(name: '/login', page: ()=> LoginPage()
        ),
        GetPage(name: '/home', page: () => Dashboard()
        )
      ],
    );
  }
}