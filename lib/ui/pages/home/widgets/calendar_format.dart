import 'package:flutter/material.dart';

enum CalendarFormat {
  month,
  twoWeeks,
  week,
}

class CalendarStyle {
  final int markersMaxCount;
  final BoxDecoration markerDecoration;

  const CalendarStyle({
    this.markersMaxCount = 1,
    this.markerDecoration = const BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle,
    ),
  });
}

bool isSameDay(DateTime? a, DateTime? b) {
  if (a == null || b == null) return false;
  return a.year == b.year && a.month == b.month && a.day == b.day;
}

class TableCalendar extends StatelessWidget {
  final DateTime firstDay;
  final DateTime lastDay;
  final DateTime focusedDay;
  final CalendarFormat calendarFormat;
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;
  final Function(CalendarFormat) onFormatChanged;
  final List<String> Function(DateTime) eventLoader;
  final CalendarStyle calendarStyle;

  const TableCalendar({
    super.key,
    required this.firstDay,
    required this.lastDay,
    required this.focusedDay,
    required this.calendarFormat,
    required this.selectedDay,
    required this.onDaySelected,
    required this.onFormatChanged,
    required this.eventLoader,
    required this.calendarStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  // TODO: Navigate to previous month
                },
              ),
              Text(
                '${focusedDay.year}년 ${focusedDay.month}월',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right),
                onPressed: () {
                  // TODO: Navigate to next month
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildWeekdayHeader(),
          const SizedBox(height: 8),
          _buildCalendarGrid(),
        ],
      ),
    );
  }

  Widget _buildWeekdayHeader() {
    const weekdays = ['일', '월', '화', '수', '목', '금', '토'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: weekdays.map((day) {
        return SizedBox(
          width: 40,
          child: Text(
            day,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: day == '일' ? Colors.red : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCalendarGrid() {
    final firstDayOfMonth = DateTime(focusedDay.year, focusedDay.month, 1);
    final lastDayOfMonth = DateTime(focusedDay.year, focusedDay.month + 1, 0);
    final firstWeekday = firstDayOfMonth.weekday;
    final daysInMonth = lastDayOfMonth.day;

    final days = <Widget>[];
    var currentDay = 1;

    // Add empty cells for days before the first day of the month
    for (var i = 0; i < firstWeekday; i++) {
      days.add(const SizedBox(width: 40, height: 40));
    }

    // Add cells for each day of the month
    while (currentDay <= daysInMonth) {
      final date = DateTime(focusedDay.year, focusedDay.month, currentDay);
      final isSelected = isSameDay(date, selectedDay);
      final hasEvents = eventLoader(date).isNotEmpty;

      days.add(
        GestureDetector(
          onTap: () => onDaySelected(date, date),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue.withOpacity(0.1) : null,
              shape: BoxShape.circle,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  currentDay.toString(),
                  style: TextStyle(
                    color: date.weekday == 7 ? Colors.red : Colors.black,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                if (hasEvents)
                  Positioned(
                    bottom: 2,
                    child: Container(
                      width: 4,
                      height: 4,
                      decoration: calendarStyle.markerDecoration,
                    ),
                  ),
              ],
            ),
          ),
        ),
      );

      currentDay++;
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: days,
    );
  }
}
