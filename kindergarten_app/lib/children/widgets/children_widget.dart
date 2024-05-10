import 'package:flutter/material.dart';

class ChildCard extends StatelessWidget {
  final dynamic child;

  const ChildCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildImageContainer(context, child['image']),
              _buildChildInfo(child),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context, String imageUrl) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  Widget _buildChildInfo(dynamic child) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '${child['firstname']} ${child['lastname']}',
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
