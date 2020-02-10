import 'package:ticketmaster_events_app/redux/middleware/combined_middleware.dart';
import 'package:ticketmaster_events_app/redux/reducers/combined_reducer.dart';
import 'app_state.dart';
import 'package:redux/redux.dart';

final store = Store<AppState>(
  reducer,
  initialState: AppState.initial(),
  middleware: getMiddlewares()
);
