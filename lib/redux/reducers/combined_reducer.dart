import 'package:ticketmaster_events_app/redux/actions/favorite_actions.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/redux/actions/event_actions.dart';
import 'package:redux/redux.dart';
import 'package:ticketmaster_events_app/redux/reducers/event_reducer.dart';
import 'package:ticketmaster_events_app/redux/reducers/favorite_reducer.dart';

final reducer = combineReducers<AppState>([
  TypedReducer<AppState,FetchEventsSuccessful>(fetchEventsSuccessfulReducer),
  TypedReducer<AppState,FetchEventsFailure>(fetchEventsFailureReducer),
  TypedReducer<AppState,FetchEventsLoading>(fetchEventsLoadingReducer),
  TypedReducer<AppState,ToggleFavorite>(toggleFavoriteReducer),
]);

