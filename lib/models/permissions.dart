import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Permissions extends StatefulWidget {
  const Permissions({super.key});

  @override
  State<StatefulWidget> createState() => PermissionsState();
}

class PermissionsState extends State<Permissions> {
  bool requested = false;
  bool fetching = false;
  late NotificationSettings settings;

  Future<void> requestPermissions() async {
    setState(() {
      fetching = true;
    });

    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission(
      announcement: true,
      carPlay: true,
      criticalAlert: true,
    );

    setState(() {
      requested = true;
      fetching = false;
      settings = settings;
    });
  }

  Future<void> checkPermissions() async {
    setState(() {
      fetching = true;
    });

    NotificationSettings settings =
        await FirebaseMessaging.instance.getNotificationSettings();

    setState(() {
      requested = true;
      fetching = false;
      settings = settings;
    });
  }

  Widget row(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title:', style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (fetching) {
      return const CircularProgressIndicator();
    }

    if (!requested) {
      return ElevatedButton(
        onPressed: requestPermissions,
        child: const Text(
          'Request Permissions',
        ),
      );
    }

    return Column(children: [
      row('Authorization Status', statusMap[settings.authorizationStatus]!),
      if (defaultTargetPlatform == TargetPlatform.iOS) ...[
        row('Alert', settingsMap[settings.alert]!),
        row('Announcement', settingsMap[settings.announcement]!),
        row('Badge', settingsMap[settings.badge]!),
        row('Car Play', settingsMap[settings.carPlay]!),
        row('Lock Screen', settingsMap[settings.lockScreen]!),
        row('Notification Center', settingsMap[settings.notificationCenter]!),
        row('Show Previews', previewMap[settings.showPreviews]!),
        row('Sound', settingsMap[settings.sound]!),
      ],
      ElevatedButton(
        onPressed: checkPermissions,
        child: const Text(
          'Reload Permissions',
        ),
      ),
    ]);
  }
}

const statusMap = {
  AuthorizationStatus.authorized: 'Authorized',
  AuthorizationStatus.denied: 'Denied',
  AuthorizationStatus.notDetermined: 'Not Determined',
  AuthorizationStatus.provisional: 'Provisional',
};

const settingsMap = {
  AppleNotificationSetting.disabled: 'Disabled',
  AppleNotificationSetting.enabled: 'Enabled',
  AppleNotificationSetting.notSupported: 'Not Supported',
};

const previewMap = {
  AppleShowPreviewSetting.always: 'Always',
  AppleShowPreviewSetting.never: 'Never',
  AppleShowPreviewSetting.notSupported: 'Not Supported',
  AppleShowPreviewSetting.whenAuthenticated: 'Only When Authenticated',
};
