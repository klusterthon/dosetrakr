import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InlineCalender extends StatefulWidget {
  final dateWidgetWidth = 32;

  const InlineCalender({super.key});

  @override
  State<InlineCalender> createState() => _InlineCalenderState();
}

class _InlineCalenderState extends State<InlineCalender> {
  final List <DateTime> calender = [];

  get pageSize => (MediaQuery.of(context).size.width / widget.dateWidgetWidth).round();

  get weekStart {
    final today = DateTime.now();
    return today.subtract(Duration(days: today.weekday));
  }

  List <DateTime> getDateRange(DateTime startDate, int end) {
    final List <DateTime> days = [];

    for(int day = 0; day < 7; day++) {
      days.add(startDate.add(Duration(days: day)));
    }

    return days;
  }

  @override
  void initState() {
    super.initState();
    calender.addAll(getDateRange(weekStart, 7));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: ListView.builder(
        itemCount: calender.length + 1,
        scrollDirection: Axis.horizontal,
        controller: PageController(
          viewportFraction: (MediaQuery.of(context).size.width / 28) / 100,
        ),
        itemBuilder: (context, index) {
          final sidePadding = Container(
            padding: const EdgeInsets.all(4.0),
          );

          if (index == 0) return sidePadding;

          final date = calender[index - 1];

          return InlineCalenderDate(
            date: date,
            selected: index == 2,
            selectedTextColor: Colors.white,
            selectedColor: Theme.of(context).primaryColor,
          );
        },
      ),
    );
  }
}

class InlineCalenderDate extends StatelessWidget {
  final DateTime date;
  final bool selected;
  final Color? selectedColor;
  final Color? selectedTextColor;

  const InlineCalenderDate({
    super.key,
    this.selectedColor,
    this.selectedTextColor,
    required this.date,
    required this.selected,
  });

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        color: selected ? selectedColor : null,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateFormat("E").format(date),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: selected ? selectedTextColor : Theme.of(context).hintColor,
                ),
          ),
          Text(
            date.day.toString(),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: selected ? selectedTextColor : null,
                ),
          ),
        ],
      ),
    );
  }
}
