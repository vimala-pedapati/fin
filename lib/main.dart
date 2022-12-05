import 'package:fininfocom_task/view_models/data_view_model.dart';
import 'package:fininfocom_task/screens/home_screen.dart';
import 'package:fininfocom_task/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FinInfoComTask());
}

class FinInfoComTask extends StatelessWidget {
  const FinInfoComTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataViewModel())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomeScreen()
        home: Splash()
      ),
    );
  }
}


