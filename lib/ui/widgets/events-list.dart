import 'package:flutter/material.dart';
import 'package:ticketmaster_events_app/ui/widgets/event-item.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';

class EventsList extends StatefulWidget {
  final List<TicketEvent> events;
  final Function onPress;
  final Function onFavoritePress;
  final Function fetchData;
  final bool isLoading;

  EventsList({
    this.events, 
    this.onPress, 
    this.onFavoritePress, 
    this.fetchData,
    this.isLoading
  });

  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventsList> {
  final ScrollController _scrollController = ScrollController();
  
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange && 
        !widget.isLoading && 
        widget.fetchData != null
    ) {
      widget.fetchData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.events.length,
      itemBuilder: (context, index) {
        final current = widget.events[index];
        return EventItem(
          event: current, 
          onPress: widget.onPress,
          onFavoritePress: widget.onFavoritePress
        );
      },
      controller: _scrollController
    );
  }
}
