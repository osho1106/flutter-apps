import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test/views/todo_view.dart';

class LocalAuthPage extends StatefulWidget {
  const LocalAuthPage({super.key});

  @override
  State<LocalAuthPage> createState() => _LocalAuthPageState();
}

class _LocalAuthPageState extends State<LocalAuthPage> {
  final LocalAuthentication auth = LocalAuthentication();
  bool _canCheckBiometrics = false;

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      debugPrint(e.toString());
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: '生体認証でログインしてください',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
    } on PlatformException catch (e) {
      debugPrint(e.toString());
      return;
    }
    if (!mounted) {
      return;
    }
    // 認証が成功した際に前のページ
    if (authenticated) {
      _navigateToTop();
    }
  }

  void _navigateToTop() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ToDoView()),
    );
  }

  @override
  void initState() {
    super.initState();
    _authenticate();
    _checkBiometrics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('生体認証でログインしてください '),
            ElevatedButton(
                onPressed: () => _authenticate(), child: const Text("する")),
            if (!_canCheckBiometrics)
              ElevatedButton(
                  onPressed: () => openAppSettings(),
                  child: const Text('オンにする'))
          ],
        ),
      ),
    );
  }
}