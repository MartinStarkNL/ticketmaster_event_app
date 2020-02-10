import 'package:ticketmaster_events_app/redux/actions/favorite_actions.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';

AppState toggleFavoriteReducer(AppState appState, ToggleFavorite action) {
  final favorites = appState.favorites;
  if (favorites.contains(action.event)) {
    favorites.remove(action.event);
  } else {
    favorites.add(action.event);
  }
  return appState.copy(
    events: appState.events, 
    favorites: favorites, 
    isLoading: appState.isLoading,
    hasNextPage: appState.hasNextPage,
    error: appState.error
  );
}