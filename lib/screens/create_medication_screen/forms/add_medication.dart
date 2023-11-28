import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddMedication extends StatelessWidget {
  const AddMedication({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What medicine would you like to add?",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              "You can type to search or scan with the camera",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).hintColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Flexible(
              child: CupertinoSearchTextField(
                prefixIcon: const Icon(Icons.search),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).dividerColor.withAlpha(100),
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            IconButton.outlined(
              onPressed: () {},
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Theme.of(context).dividerColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
