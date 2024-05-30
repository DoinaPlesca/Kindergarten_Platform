import 'package:flutter/material.dart';
import 'package:kindergarten_app/app_colors.dart';
import '../widgets/children_widget.dart';

class ChildrenPage extends StatelessWidget {
  final List<dynamic> children;
  final String username;
  final bool isTeacher;

  const ChildrenPage({super.key, required this.children, required this.username,required this.isTeacher});

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 600;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              username,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.black,

              ),
            ),
          ),
          Expanded(
            child: _buildMainContent(context, isWeb),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(BuildContext context, bool isWeb) {
    return children.isEmpty
        ? _buildNoChildrenFound()
        : Center(child: isWeb ? _buildChildrenRow(context) : _buildChildrenColumn(context),
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

  Widget _buildChildrenRow(BuildContext context) {
    int gridColumns = 2;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridColumns,
        childAspectRatio: 1/ 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) {
        var child = children[index];
        return ChildCard(child: child);
      },
      padding: const EdgeInsets.all(10),
    );
  }



  Widget _buildChildrenColumn(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children.map<Widget>((child) =>
            SizedBox(
              width: double.infinity,
              child: ChildCard(child: child),
            )
        ).toList(),
      ),
    );
  }
}
