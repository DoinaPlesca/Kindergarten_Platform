
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/announcement/bloc/announc_bloc.dart';
import 'package:kindergarten_app/announcement/models/announc_model.dart';
import 'package:kindergarten_app/app_colors.dart';
import '../bloc/announc_state.dart';


/*
class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController messageController = TextEditingController();
  int selectedNotificationIndex = -1;

  @override
  void initState() {
    super.initState();
    context.read<AnnouncementBloc>().getAllAnnouncements();
  }

  void postNotification() {
    if (_formKey.currentState!.validate()) {
      context.read<AnnouncementBloc>().postAnnouncement(messageController.text.trim());
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcements'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: AppColors.babyPowder,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: messageController,
                          decoration: const InputDecoration(
                            hintText: 'Enter your message...',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a message.';
                            }
                            return null;
                          },
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: postNotification,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<AnnouncementBloc, AnnouncementState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is Loaded) {
                    final List<AnnouncementWithSenderEmail> announcementsList = state.announcements;
                    if (announcementsList .isEmpty) {
                      return const Center(child: Text('No announcements found.'));
                    }
                    return ListView.builder(
                      itemCount: announcementsList .length,
                      itemBuilder: (context, index) {
                        final announcement = announcementsList [index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedNotificationIndex =
                              selectedNotificationIndex == index ? -1 : index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              elevation: 2,
                              color: selectedNotificationIndex == index
                                  ? AppColors.babyPowder
                                  : AppColors.eggPlant,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'From: ${announcement.email}',
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      'Time: ${announcement.timestamp}',
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      announcement.content ?? 'No content',
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else if (state is Error) {
                    return Center(child: Text(state.message));
                  } else {
                    return const Center(child: Text('Unexpected state.'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


*/
