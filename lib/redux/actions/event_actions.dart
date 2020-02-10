import 'package:flutter/material.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';

class FetchEvents {
  FetchEvents();
}

class FetchEventsLoading {
  final bool loading;
  FetchEventsLoading({ @required this.loading });
}

class FetchEventsFailure {
  final String error;
  FetchEventsFailure({ @required this.error });
}

class FetchEventsSuccessful {
  final List<TicketEvent> events;
  FetchEventsSuccessful({ @required this.events });
}
