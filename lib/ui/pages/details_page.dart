import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:ticketmaster_events_app/models/ticket_event.dart';
import 'package:ticketmaster_events_app/redux/app_state.dart';
import 'package:ticketmaster_events_app/utils/getStartDate.dart';
import 'package:ticketmaster_events_app/utils/isFavorite.dart';
import 'package:ticketmaster_events_app/viewmodels/event-viewmodel.dart';
import 'dart:math';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TicketEvent event = ModalRoute.of(context).settings.arguments;
    final imageUrl = 
      event.images.length > 0 
        ? event.images[Random().nextInt(event.images.length-1)].url
        : '';
    return StoreConnector<AppState, EventViewModel>(
      converter: (store) => EventViewModel.create(store),
      builder: (BuildContext context, EventViewModel viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Event Details'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  isFavorite(event, context) 
                    ? Icons.favorite 
                    : Icons.favorite_border,
                  size: 35,
                  ),
                color: Colors.purple,
                onPressed: () => viewModel.onToggleFavorite(event)
              ) 
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imageUrl)
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Divider(
                height: 10,
                indent: 50,
                endIndent: 50,
                color: Colors.black45,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10), 
                child: Text(
                  'Title:', 
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  )  
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10), 
                child: Text(
                  '${event.name}', 
                  style: TextStyle(
                    fontSize: 18,
                  )  
                )
              ),
              Divider(
                height: 10,
                indent: 50,
                endIndent: 50,
                color: Colors.black45,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  'When?', 
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  )  
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
                child: Text(
                  getStartDate(event), 
                  style: TextStyle(
                    fontSize: 18,
                  )  
                )
              ),
              Divider(
                height: 10,
                indent: 50,
                endIndent: 50,
                color: Colors.black45,
              ),
            ],
          )
        );
      }
    );
  }
}