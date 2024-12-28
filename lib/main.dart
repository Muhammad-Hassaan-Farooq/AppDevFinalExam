import 'package:app_dev_final_exam/q1/bloc/juice_bloc.dart';
import 'package:app_dev_final_exam/q1/ui/juice_screen.dart';
import 'package:app_dev_final_exam/q2/expense_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Q1());
}


class Q1 extends StatelessWidget{
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider(
          create: (context) => JuiceBloc()..add(FetchJuice()),
          child: JuiceScreen(),
        )
    );
  }

}