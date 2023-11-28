import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  build(context){
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          const Column(
            children: [
              Text("Let's set your profile"),
              Text("This will allow more personalization")
            ],
          ),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("First name"),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("First name"),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("First name"),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("First name"),
                  ),
                ),
                Row(
                  children: [
                    FilledButton(onPressed: (){}, child: const Text("Save"),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}