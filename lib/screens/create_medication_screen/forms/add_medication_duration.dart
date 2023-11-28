import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';

class AddMedicationDuration extends StatelessWidget {
  const AddMedicationDuration({super.key});

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
                    "assets/illustrations/il_timer.png",
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
          "How often do you take this medication?",
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
                    label: Text("Enter start date"),
                    suffixIcon: Icon(Icons.calendar_month_rounded),
                  ),
                ),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How long are you taking this medication?",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    RadioListTile(
                      value: true,
                      groupValue: false,
                      title: const Text("No end date"),
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {},
                    ),
                    RadioListTile(
                      value: true,
                      groupValue: false,
                      title: const Text("Until date"),
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                InputDatePickerFormField(
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2024),
                  fieldLabelText: "Enter end date?",
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
