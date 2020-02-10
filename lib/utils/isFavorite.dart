import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';

bool isFavorite(TicketEvent event, BuildContext context) {
  final store = StoreProvider.of<AppState>(context, listen: false);
  return store.state.favorites.contains(event);
}
