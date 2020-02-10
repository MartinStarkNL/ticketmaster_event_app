import 'package:ticketmaster_events_app/redux/actions/event_actions.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/redux/middleware/event_middleware.dart';
import 'package:ticketmaster_events_app/services/event_client.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> getMiddlewares() {
  return [
    TypedMiddleware<AppState, FetchEvents>(eventsMiddleware(EventClient())),
  ];
}