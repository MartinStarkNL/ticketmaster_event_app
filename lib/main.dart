import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:ticketmaster_events_app/ui/pages/details_page.dart';
import 'package:ticketmaster_events_app/ui/pages/events_page.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/redux/store.dart';
import 'package:ticketmaster_events_app/ui/pages/wishlist_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'TicketMaster Events',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EventsPage(),
        routes: {
          'EventsPage': (context) => EventsPage(),
          'DetailsPage': (context) => DetailsPage(),
          'WishlistPage': (context) => WishlistPage()
        },
      )
    );
  }
}
