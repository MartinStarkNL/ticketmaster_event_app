
import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/redux/actions/event_actions.dart';
import 'package:ticketmaster_events_app/services/event_client.dart';
import 'package:redux/redux.dart';

Middleware<AppState> eventsMiddleware(EventClient client) {
  return (Store<AppState> store, action, NextDispatcher dispatcher) {
    if (action is FetchEvents) {
      dispatcher(FetchEventsLoading(loading: true));
      
      final maxEventsPerPage = AppState.MAX_EVENTS_PER_PAGE;
      final pageIndex = store.state.events.length ~/ maxEventsPerPage;
      
      EventClient().fetchEvents(
        store.state.selectedCountry ?? 'DE', 
        pageIndex, 
        maxEventsPerPage
      ).then((value) {
        dispatcher(FetchEventsSuccessful(events: value));
      }).catchError((error) {
        dispatcher(FetchEventsFailure(error: error.toString()));
      }).whenComplete(() => 
        dispatcher(FetchEventsLoading(loading: false))
      );
    }
  };
}
