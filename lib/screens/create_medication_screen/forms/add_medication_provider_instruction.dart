import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMedicationProviderInstruction extends StatelessWidget {
  const AddMedicationProviderInstruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/illustrations/il_note.png",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        Text(
          "Add provider's instruction",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 24.0),
        Expanded(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Administration instruction"),
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Additional notes"),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text("Skip"),
              ),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: FilledButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Save"),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
