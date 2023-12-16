import 'package:flutter/material.dart';
import 'package:iscapp/views/widgets/appBarWidget.dart';
import 'package:iscapp/views/widgets/settingsWidgets/dropDown.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Settings"),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            dropDownSetting(
              title: "Dark Mode",
              icon: Icons.person,
            ),
            dropDownSetting(
              title: "Notifications",
              icon: Icons.notifications,
            ),
            dropDownSetting(
              title: "Audio",
              icon: Icons.music_note,
            ),
            dropDownSetting(
              title: "About Us",
              icon: Icons.people,
            ),
          ],
        ),
      ),
    );
  }
}
