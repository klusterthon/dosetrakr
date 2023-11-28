import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMedicationStrength extends StatelessWidget {
  const AddMedicationStrength({super.key});

  @override
  Widget build(context) {
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
                    "assets/illustrations/il_frequency.png",
                    width: 96,
                    height: 56,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 24.0),
        Text(
          "Choose the medication strength",
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
                      Icon(
                        Icons.add,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        "Add custom weight",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                );
              }

              return const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("500 mg"),
                trailing: Icon(Icons.chevron_right),
              );
            },
          ),
        ),
      ],
    );
  }
}
