import 'package:flutter/material.dart';
import 'package:movie_apps/presentation/profile/profile_details/profile_picture.dart';
import 'package:movie_apps/presentation/profile/profile_details/profile_settings.dart';
import 'package:movie_apps/presentation/profile/profile_details/profile_watched.dart';
import 'package:movie_apps/values/textstyle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account & Settings'),
      ),
      body: ListView(
        children: const [
          ProfilePicture(),
          SizedBox(
            height: 25,
          ),
          ProfileWatched(),
          SizedBox(
            height: 25,
          ),
          ProfileSettings(
            iconData: Icons.language,
            text: 'Language',
            icons: Icons.chevron_right,
          ),
          ProfileSettings(
            iconData: Icons.phone_android,
            text: 'Phone Number',
            icons: Icons.chevron_right,
          ),
          ProfileSettings(
            iconData: Icons.notifications,
            text: 'Notification',
            icons: Icons.chevron_right,
          ),
          ProfileSettings(
            iconData: Icons.settings,
            text: 'Settings',
            icons: Icons.chevron_right,
          ),
          ProfileSettings(
            iconData: Icons.contact_support,
            text: 'Contact Support',
            icons: Icons.chevron_right,
          ),
          ProfileSettings(
            iconData: Icons.logout,
            text: 'Log out',
            icons: Icons.chevron_right,
          ),
        ],
      ),
    );
  }
}
