import 'package:flutter/material.dart';
import 'package:ticketmaster_events_app/ui/widgets/events-list.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/viewmodels/event-viewmodel.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, EventViewModel>(
      converter: (store) => EventViewModel.create(store),
      builder: (BuildContext context, EventViewModel viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My Wishlist')
          ),
          body: new EventsList(
            events: viewModel.favorites, 
            onPress: (TicketEvent event) => 
              Navigator.pushNamed(context, 'DetailsPage', arguments: event),
            onFavoritePress: viewModel.onToggleFavorite,
            isLoading: viewModel.isLoading
          ),
        );
      }
    );
  }
}
