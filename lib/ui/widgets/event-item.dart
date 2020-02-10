import 'package:flutter/material.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';
import 'package:ticketmaster_events_app/utils/getStartDate.dart';
import 'package:ticketmaster_events_app/utils/isFavorite.dart';

class EventItem extends StatelessWidget {
  final TicketEvent event;
  final Function onPress;
  final Function onFavoritePress;

  EventItem({ 
    this.event,
    this.onPress,
    this.onFavoritePress
  });

  getImageUrl() {
    final images = this.event.images;
    return images.length > 0 ? images[0].url : '';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), 
          border: Border.all(color: Colors.black, width: 2.0),
          color: Colors.orangeAccent
        ),
        child: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10), 
              child: Image.network(this.getImageUrl(), width: 70, height: 70),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.event.name, 
                      overflow: TextOverflow.ellipsis, 
                      maxLines: 3, 
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    Text(getStartDate(event))
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                isFavorite(this.event, context) 
                  ? Icons.favorite 
                  : Icons.favorite_border
                ),
              color: Colors.purple,
              onPressed: () => this.onFavoritePress(this.event)
            ) 
          ],
        )
        ])
      ),
      onTap: () => this.onPress(this.event),
    );
  }
}
