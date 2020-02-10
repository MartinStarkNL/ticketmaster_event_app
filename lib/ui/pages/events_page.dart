import 'package:flutter/material.dart';
import 'package:ticketmaster_events_app/ui/widgets/events-list.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';
import 'package:ticketmaster_events_app/redux/actions/event_actions.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/ui/pages/wishlist_page.dart';
import 'package:ticketmaster_events_app/viewmodels/event-viewmodel.dart';

class EventsPage extends StatelessWidget {
  renderWishlistButton(BuildContext context, int countFavorites) {
    return Stack(
      alignment: Alignment(0.1, 0),
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite, size: 35),
          color: Colors.purple,
          onPressed: () =>
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) => WishlistPage())
            )
        ),
        Text('$countFavorites')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, EventViewModel>(
      converter: (store) => EventViewModel.create(store),
      builder: (BuildContext context, EventViewModel viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Events'),
            actions: <Widget>[
              renderWishlistButton(context, viewModel.favorites.length)
            ],
          ),
          body: EventsList(
            events: viewModel.events, 
            onPress: (TicketEvent event) => 
              Navigator.pushNamed(context, 'DetailsPage', arguments: event),
            onFavoritePress: viewModel.onToggleFavorite,
            isLoading: viewModel.isLoading,
            fetchData: viewModel.fetchEvents
          ),
        );
      },
      onInit: (store) {
        store.dispatch(FetchEvents());
      },
    );
  }
}
