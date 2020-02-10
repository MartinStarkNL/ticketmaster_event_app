import 'package:redux/redux.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';
import 'package:ticketmaster_events_app/redux/actions/event_actions.dart';
import 'package:ticketmaster_events_app/redux/actions/favorite_actions.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';

class EventViewModel {
  final List<TicketEvent> events;
  final List<TicketEvent> favorites;

  final Function fetchEvents;
  final Function onToggleFavorite;
  final bool isLoading;

  EventViewModel(
    this.events, 
    this.favorites, 
    this.fetchEvents, 
    this.onToggleFavorite, 
    this.isLoading
  );

  factory EventViewModel.create(Store<AppState> store) {
    final state = store.state;
    return EventViewModel(
      state.events, 
      state.favorites, 
      () => store.dispatch(FetchEvents()),
      (TicketEvent event) => store.dispatch(ToggleFavorite(event: event)),
      state.isLoading
    );
  }

}