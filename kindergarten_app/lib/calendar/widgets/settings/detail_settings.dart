import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String eventTitle;
  final String eventDescp;
  final DateTime eventDate;

  const DetailScreen({
    required this.eventTitle,
    required this.eventDescp,
    required this.eventDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ... Widget tree for displaying event details
        ],
      ),
    );
  }
}
