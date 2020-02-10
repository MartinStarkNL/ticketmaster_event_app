import 'package:ticketmaster_events_app/models/ticket_event.dart';

class AppState {
  final List<TicketEvent> events;
  final List<TicketEvent> favorites;
  final bool isLoading;
  final bool hasNextPage;
  final String error;
  final String selectedCountry;
  
  static const int MAX_EVENTS_PER_PAGE = 25;

  AppState({ 
    this.events, 
    this.favorites, 
    this.isLoading, 
    this.hasNextPage, 
    this.error, 
    this.selectedCountry 
  });
  
  factory AppState.initial() => AppState(
    events: List<TicketEvent>(), 
    favorites: List<TicketEvent>(),
    isLoading: false,
    hasNextPage: true,
    selectedCountry: 'DE'
  );

  AppState copy({ 
    List<TicketEvent> events, 
    List<TicketEvent> favorites, 
    bool isLoading,
    bool hasNextPage,
    String error,
    String selectedCountry
  }) => AppState(
    events: events ?? this.events, 
    favorites: this.favorites ?? favorites,
    isLoading: this.isLoading ?? isLoading,
    error: error != this.error ? error : this.error,
    selectedCountry: 
      selectedCountry != this.selectedCountry 
        ? selectedCountry 
        : this.selectedCountry
  );

  bool isFavorite(TicketEvent event) {
    return this.favorites.contains(event);
  }
}