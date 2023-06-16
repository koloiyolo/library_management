import 'package:library_management/scaffold.dart';

import 'imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Library',
        theme: ThemeData(
            brightness: Brightness.light,
            useMaterial3: true,
            colorSchemeSeed: Colors.orange),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            colorSchemeSeed: Colors.orangeAccent),
        themeMode: ThemeMode.dark,
        home: const AppScaffold());
  }
}
