import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMedicationForm extends StatelessWidget {
  const AddMedicationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                   child: Image.asset(
                      "assets/illustrations/il_drugs.png",
                      width: 120,
                      fit: BoxFit.cover,
                    )
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 24.0),
        Text(
          "What form is the medicine?",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 8.0),
        Expanded(
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              if (index == 5) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "View more forms",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                );
              }

              return const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("Tablet"),
                trailing: Icon(Icons.chevron_right),
              );
            },
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
