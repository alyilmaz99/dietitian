// ignore_for_file: avoid_print

import 'package:calendar_view/calendar_view.dart';
import 'package:dietitian/product/extension/extension.dart';
import 'package:dietitian/view/home/date/view/create_event_view.dart';
import 'package:dietitian/view/home/date/viewmodel/date_viewmodel.dart';
import 'package:flutter/material.dart';

import '../../../../product/model/model.dart';
import '../../../../product/widget/month_view_widget.dart';

class DatePageView extends StatefulWidget {
  const DatePageView({super.key});

  @override
  State<DatePageView> createState() => _DatePageViewState();
}

class _DatePageViewState extends DateViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 80.0, right: 20),
          child: FloatingActionButton(
            elevation: 8,
            onPressed: _addEvent,
            child: const Icon(Icons.add),
          ),
        ),
        body: const MonthViewWidget(),
      ),
    );
  }

  Future<void> _addEvent() async {
    final event = await context.pushRoute<CalendarEventData<Event>>(
      const CreateEventPage(
        withDuration: true,
      ),
    );
    if (event == null) return;
    CalendarControllerProvider.of<Event>(context).controller.add(event);
  }
}
