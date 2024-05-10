import 'package:flutter/material.dart';

import '../widgets/children_widget.dart';


class ChildrenPage extends StatelessWidget {
  final List<dynamic> children;

  const ChildrenPage({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children.isEmpty
          ? _buildNoChildrenFound()
          : children.length == 1
          ? _buildSingleChild(context, children[0])
          : _buildMultipleChildren(context),
    );
  }

  Widget _buildNoChildrenFound() {
    return const Center(
      child: Text(
        'You do not have any registered children.',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildSingleChild(BuildContext context, dynamic child) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChildCard(child: child),
        ],
      ),
    );
  }

  Widget _buildMultipleChildren(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children.map<Widget>((child) {
          return Expanded(
            child: ChildCard(child: child),
          );
        }).toList(),
      ),
    );
  }
}
