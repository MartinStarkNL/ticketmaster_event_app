import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:redux/redux.dart';

Middleware<AppState> favoritesMiddleware() {
  return (Store<AppState> store, action, NextDispatcher dispatcher) {
    dispatcher(action);
    store.dispatch(action);
  };
}
