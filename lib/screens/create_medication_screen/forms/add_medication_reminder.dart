import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMedicationReminder extends StatelessWidget {
  const AddMedicationReminder({super.key});

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
                      "assets/illustrations/il_reminder.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
            )
          ],
        ),
        const SizedBox(height: 24.0),
        Text(
          "When would you like to be reminded?",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 24.0),
        Expanded(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  readOnly: true,
                  onTap: () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Time"),
                    suffixIcon: Icon(Icons.watch_later_outlined),
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  initialValue: "1",
                  decoration: const InputDecoration(
                    label: Text("Number of pill(s)"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
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
