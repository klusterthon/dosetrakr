import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';

import '../components/inline_calender.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          maxRadius: 16.0,
          backgroundColor: Colors.transparent,
          child: Image.asset(
            "assets/tests/avatar.png",
            fit: BoxFit.cover,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Hello"),
            Text(
              "Jane David",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).hintColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16.0),
          const InlineCalender(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/illustrations/il_empty.svg",
                  ),
                  const SizedBox(height: 48),
                  Text(
                    "Your medications will be displayed here, add medicine to get started",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 72),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          label: const Text("Add medicine"),
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor.withAlpha(100),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Iconsax.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Track",
            icon: Icon(Iconsax.health),
          ),
          BottomNavigationBarItem(
            label: "Medicine",
            icon: Icon(Iconsax.note_1),
          ),
          BottomNavigationBarItem(
            label: "More",
            icon: Icon(Iconsax.menu),
          ),
        ],
      ),
    );
  }
}
