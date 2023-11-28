import 'package:flutter/material.dart';

import 'forms/forms.dart';

class CreateMedicationScreen extends StatelessWidget {
  const CreateMedicationScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Add medication"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: 0.3,
                minHeight: 16,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: IndexedStack(
                index: 0,
                children: [
                  AddMedication(),
                  AddMedicationForm(),
                  AddMedicationStrength(),
                  AddMedicationInterval(),
                  AddMedicationFrequency(),
                  AddMedicationReminder(),
                  AddMedicationDuration(),
                  AddMedicationRefillReminder(),
                  AddMedicationProviderInstruction(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
