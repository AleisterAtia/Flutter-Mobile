import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageNotif extends StatelessWidget {
  const PageNotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti dari sebuah widget
        //AppBar : widget
        title: Text('Notification', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 67, 26, 87),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text('Normal toast'),
              onTap: () {
                showToast(
                  'This is toast',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                );
              },
            ),
            Divider(height: 0.5),
            ListTile(
              title: Text('Permanent toast'),
              onTap: () {
                showToast(
                  'This is a permanent toast',
                  context: context,
                  duration: Duration.zero,
                );
              },
            ),
            Divider(height: 0.5),
            ListTile(
              title: Text('Normal toast full width'),
              onTap: () {
                showToast(
                  'This is normal',
                  context: context,
                  axis: Axis.horizontal,
                  alignment: Alignment.center,
                  position: StyledToastPosition.bottom,
                  borderRadius: BorderRadius.zero,
                  toastHorizontalMargin: 0,
                  fullWidth: true,
                );
              },
            ),
            Divider(height: 0.5),
          ],
        ),
      ),
    );
  }
}
