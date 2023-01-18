import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool isswitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: const Text('Additional Information'),
      ),
      body: Center(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.share_outlined),
              title: Text('Share Dukaan App'),
              trailing: Icon(Icons.navigate_next),
            ),
            const ListTile(
              leading: Icon(Icons.chat_bubble_outline),
              title: Text('Change Language'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: const Icon(Icons.whatsapp),
              title: const Text('WhatsApp Chat Support'),
              trailing: Switch(
                value: isswitched,
                onChanged: (value) {
                  setState(() {
                    isswitched = value;
                  });
                },
              ),
            ),
            const ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Policy'),
            ),
            const ListTile(
              leading: Icon(Icons.star_border_outlined),
              title: Text('Rate Us'),
            ),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sign Out'),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'version',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '2.1.4',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
