import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/redux/actions/event_actions.dart';

AppState fetchEventsLoadingReducer(AppState appState, FetchEventsLoading action) {
  return appState.copy(
    events: appState.events,
    favorites: appState.favorites,
    isLoading: action.loading,
    hasNextPage: appState.hasNextPage,
    error: appState.error
  );
}

AppState fetchEventsSuccessfulReducer(AppState appState, FetchEventsSuccessful action) {
  final hasNextPage = action.events.length == AppState.MAX_EVENTS_PER_PAGE;
  final allEvents = appState.events;
  allEvents.addAll(action.events);
  return appState.copy(
    events: allEvents, 
    favorites: appState.favorites, 
    isLoading: appState.isLoading,
    hasNextPage: hasNextPage,
    error: appState.error
  );
}

AppState fetchEventsFailureReducer(AppState appState, FetchEventsFailure action) {
  return appState.copy(
    events: appState.events,
    favorites: appState.favorites,
    isLoading: appState.isLoading,
    hasNextPage: appState.hasNextPage,
    error: action.error
  );
}
