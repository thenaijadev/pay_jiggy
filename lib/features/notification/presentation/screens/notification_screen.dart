import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/all_notification_list.dart';
import 'package:pay_jiggy/features/notification/presentation/widgets/unread_notifcation_list.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.more_vert),
                  )
                ],
                centerTitle: true,
                title: const TextWidget(
                  text: "Notification",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      icon: TextWidget(
                        text: "All Notification",
                        color: _tabController.length == 0
                            ? AppColors.orange
                            : null,
                        fontWeight: _tabController.length == 0
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    Tab(
                      icon: TextWidget(
                        text: "Unread",
                        color: _tabController.length == 0
                            ? AppColors.orange
                            : null,
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              AllNotificationsList(),
              UnreadNotificationsList(),
            ],
          ),
        ),
      ),
    );
  }
}
