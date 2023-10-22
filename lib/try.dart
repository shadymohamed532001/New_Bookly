import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    // Simulate loading data or performing an initial setup.
    // You can replace this with your actual loading logic.
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background or content behind the slide-in screen
          Container(
            color: Colors.blue, // Background color
            child: const Center(
              child: Text(
                'Background Content',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          // Slide-in screen
          SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1), // Slide from the bottom
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: ModalRoute.of(context)!.animation!,
              curve: Curves.easeInOut,
            )),
            child: Container(
              color: Colors.white, // Background color of the slide-in screen
              child: Center(
                child: _isLoading
                    ? const CircularProgressIndicator() // Loading indicator
                    : const Text(
                        'Welcome to My App!',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
