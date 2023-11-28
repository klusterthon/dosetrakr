import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMedicationRefillReminder extends StatelessWidget {
  const AddMedicationRefillReminder({Key? key}) : super(key: key);

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
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Add refill reminder",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              TextSpan(
                text: " (Optional)",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).hintColor,
                ),
              ),
            ],
          ),
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
                    label: Text("Current pill amount"),
                  ),
                ),
                const SizedBox(height: 24),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Remind me when it remains"),
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
                    Text("Next"),
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
