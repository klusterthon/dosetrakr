import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMedicationInterval extends StatelessWidget {
  const AddMedicationInterval({super.key});

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
                    "assets/illustrations/il_calender.png",
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
          "How do you take this medication?",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 8.0),
        Expanded(
          child: ListView.separated(
            itemCount: 6,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {},
                contentPadding: EdgeInsets.zero,
                title: const Text("Every day"),
                trailing: const Icon(Icons.chevron_right),
              );
            },
          ),
        ),
      ],
    );
  }
}
