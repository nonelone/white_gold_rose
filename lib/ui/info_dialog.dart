import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('White-Gold Rose'),
      content: const Text('Lorem Ipsum.... you get the deal'),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Flame Jam 2025'),
          onPressed:
              () => launchUrl(Uri.parse('https://itch.io/jam/flame-jam-2025')),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Source Code'),
          onPressed:
              () => launchUrl(
                Uri.parse('https://github.com/nonelone/white_gold_rose'),
              ),
        ),

        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
