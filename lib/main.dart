import 'package:air_plane/cubit/page_cubit.dart';
import 'package:air_plane/ui/pages/Splash_Page.dart';
import 'package:air_plane/ui/pages/bonus_page.dart';
import 'package:air_plane/ui/pages/get_started.dart';
import 'package:air_plane/ui/pages/main_page.dart';
import 'package:air_plane/ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStarted(),
          '/signUp': (context) => SignUpPage(),
          '/bonus': (context) => bonus_page(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
