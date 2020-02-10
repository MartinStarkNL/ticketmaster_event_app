
import 'package:intl/intl.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';

String getStartDate(TicketEvent event) {
    final start = event.dates.start;
    if (start.dateTime != null) {
      DateFormat dateFormat = DateFormat("yyyy-MM-dd, HH:mm");
      final dateTimeString = event.dates.start.dateTime;
      DateTime dateTime = DateTime.parse(dateTimeString);
      return dateFormat.format(dateTime);
    } else {
      final localDate = start.localDate ?? '';
      final localTime = start.localTime ?? '';
      final separator = 
        start.localDate != null && start.localTime != null 
          ? ', '
          : '';
      return '$localDate$separator$localTime';
    }    
  }