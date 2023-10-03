import 'package:flutter/material.dart';
import 'package:speech_to_text_demo/voiceToTextScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Center(
          child: MaterialButton(
            elevation: 5,
            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            splashColor: Theme.of(context).secondaryHeaderColor,
            textColor: Colors.white.withOpacity(
              0.9,
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const VoiceToTextScreen();
                  },
                ),
              );
            },
            child: const Text(
              "Voice to Text",
            ),
          ),
        ),
      ),
    );
  }
}
