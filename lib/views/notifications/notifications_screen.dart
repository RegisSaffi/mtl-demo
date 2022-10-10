import 'package:flutter/material.dart';
import 'package:mtldemo/views/notifications/pages/notification_settings_page.dart';
import 'package:mtldemo/views/notifications/pages/notifications_page.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  var _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget _getCounterBadge(int count, {bool active = true}) {
      return Container(
        margin: const EdgeInsets.only(left: 3),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        decoration: BoxDecoration(
            color: active ? Colors.amber : Colors.grey.withOpacity(.3),
            borderRadius: BorderRadius.circular(4)),
        child: Text(
          "$count",
          style: TextStyle(
              fontSize: 13, color: active ? Colors.black : Colors.grey),
        ),
      );
    }

    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Notifications"),
          leading: const BackButton(),
          actions: [
            Row(
              children: [
                SizedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Mark all as read",
                          style: TextStyle(
                              fontSize: 13,
                              decoration: TextDecoration.underline,
                              color: Colors.grey))),
                ),
              ],
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            onTap: (i) {
              setState(() {
                _selectedPage = i;
              });
            },
            tabs: [
              Tab(
                child: SizedBox(
                    // width: (MediaQuery.of(context).size.width - 100) / 5,
                    child: Row(
                  children: [
                    const Text("All", textAlign: TextAlign.center),
                    _getCounterBadge(2, active: _selectedPage == 0)
                  ],
                )),
              ),
              Tab(
                child: Row(
                  children: [
                    const Text(
                      "Account",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                    _getCounterBadge(2, active: _selectedPage == 1)
                  ],
                ),
              ),
              const Tab(
                child: Text(
                  "What's new",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Tab(
                icon: SizedBox(width: 20, child: Icon(Icons.settings_outlined)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NotificationsPage(),
            NotificationsPage(),
            NotificationsPage(),
            NotificationSettingsPage()
          ],
        ),
      ),
    );
  }
}
