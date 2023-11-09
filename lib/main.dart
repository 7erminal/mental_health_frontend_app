import 'package:flutter/material.dart';
import 'package:icon_forest/icon_forest.dart';
import 'package:medical_application/index.dart';
import 'index.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OnboardBloc()),
      ChangeNotifierProvider(create: (_) => UserBloc()),
      ChangeNotifierProvider(create: (_) => AssessmentBloc()),
    ],
      child: const MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();

    FlutterNativeSplash.remove();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,
      ),
      initialRoute: LandingPage.id,
      routes: {
        LandingPage.id: (context) => LandingPage(),
        LoginAndSignup.id: (context) => LoginAndSignup(),
        HomePage.id: (context) => HomePage(),
        Profile.id: (context) => Profile(),
        DiagnosisPage.id: (context) => DiagnosisPage(),
        DiagnosisLandingPage.id: (context) => DiagnosisLandingPage(),
        ConsultationPage.id: (context) => ConsultationPage(),
        TherapistDetails.id: (context) => TherapistDetails(),
        AssessmentModule1.id: (context) => AssessmentModule1(),
        ProfileSetup.id: (context) => ProfileSetup(),
        MindAndMoods.id: (context) => MindAndMoods(),
      },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

