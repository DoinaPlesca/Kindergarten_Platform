import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../bloc/announc_bloc.dart';
import '../bloc/announc_state.dart';
import '../models/announc_model.dart';
import '../widgets/announcement_input_field.dart';
import '../widgets/announcements_list.dart';


class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<AnnouncementsPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController messageController = TextEditingController();
  int selectedNotificationIndex = -1;
  bool isAnnouncementPoster = false;

  @override
  void initState() {
    super.initState();
    fetchAllAnnouncements(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            buildAnnouncementInputField(),
            buildAnnouncementsList(),
          ],
        ),
      ),
    );
  }

  Widget buildAnnouncementInputField() {
    return AnnouncementInputField(
      controller: messageController,
      onPost: () => postAnnouncement(
        context,
        _formKey,
        messageController,
            () {
          setState(() {
            isAnnouncementPoster = true;
          });
        },
      ),
    );
  }

  Widget buildAnnouncementsList() {
    return Expanded(
      child: BlocBuilder<AnnouncementBloc, AnnouncementState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            final List<AnnouncementWithSenderEmail> announcementsList = sortAnnouncements(List.from(state.Announcements));

            if (announcementsList.isEmpty) {
              return const Center(child: Text('No announcements found.'));
            }

            return AnnouncementsList(
              announcementsList: announcementsList,
              selectedNotificationIndex: selectedNotificationIndex,
              onAnnouncementTap: (context, announcement) {
                showAnnouncementDialog(context, announcement);
                if (!announcement.isread) {
                  markAnnouncementAsRead(context, announcement.id);
                }
              },
            );
          } else if (state is Error) {
            return Center(child: Text(state.message));
          } else {
            return const Center(child: Text('Unexpected state.'));
          }
        },
      ),
    );
  }
}

void fetchAllAnnouncements(BuildContext context) {
  context.read<AnnouncementBloc>().getAllAnnouncements();
}

void postAnnouncement(
    BuildContext context,
    GlobalKey<FormState> formKey,
    TextEditingController messageController,
    VoidCallback setStateCallback,
    ) {
  if (formKey.currentState!.validate()) {
    setStateCallback();
    context.read<AnnouncementBloc>().postAnnouncement(messageController.text.trim());
    messageController.clear();
    fetchAllAnnouncements(context);
  }
}

void markAnnouncementAsRead(BuildContext context, int announcementId) {
  context.read<AnnouncementBloc>().markAnnouncementAsRead(announcementId);
}

List<AnnouncementWithSenderEmail> sortAnnouncements(List<AnnouncementWithSenderEmail> announcements) {
  announcements.sort((a, b) {
    if (a.isread && !b.isread) {
      return 1;
    } else if (!a.isread && b.isread) {
      return -1;
    }
    return -a.timestamp.compareTo(b.timestamp);
  });
  return announcements;
}


void showAnnouncementDialog(BuildContext context, dynamic announcement) {
  final DateFormat formatter = DateFormat.yMMMMd('en_US');

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Announcement Details'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              buildRichText('From: ', announcement.email),
              const SizedBox(height: 10),
              buildRichText('Time: ', formatter.format(announcement.timestamp)),
              const SizedBox(height: 10),
              buildRichText('Message: ', announcement.content),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

RichText buildRichText(String boldText, String normalText) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: boldText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        TextSpan(
          text: normalText,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ],
    ),
  );
}

