import 'package:chat_app/core/constant/app_constant.dart';
import 'package:chat_app/core/firebase/firebase_options.dart';
import 'package:chat_app/core/theme/get_theme_data.dart';
import 'package:chat_app/provider/theme_provider.dart';
import 'package:chat_app/view/auth/login/login_page.dart';
import 'package:chat_app/view/onboarding/onboarding_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Hive
  await Hive.initFlutter();
  await Hive.openBox('settings');
  // Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstant.appName,
      theme: GetThemeData.getThemeData(ref.watch(themeProvider)),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (_) => OnboardingPage(),
        '/login': (_) => LoginPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('chat app')),
      body: Consumer(
        builder: (context, ref, _) {
          final nameTheme = ref.watch(themeProvider);
          return Center(
            child: Column(
              children: [
                Text(nameTheme),
                Switch(
                  value: nameTheme == 'dark-theme',
                  onChanged: (val) {
                    ref
                        .read(themeProvider.notifier)
                        .changeTheme(val ? 'dark-theme' : 'light-theme');
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
