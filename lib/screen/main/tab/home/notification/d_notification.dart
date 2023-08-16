import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';
import 'package:toss_app_div/screen/main/tab/home/notification/vo/vo_notification.dart';
import 'package:toss_app_div/screen/main/tab/home/notification/w_notification_item.dart';

class NotificationDialog extends DialogWidget {
  final List<TtosNotification> notification;
   NotificationDialog(this.notification,{Key? key,super.animation = NavAni.Bottom}) : super(key: key );

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.notification.map((e) => NotificationItemWidget(onTap: (){
            widget.hide();
            print(e);
      }, notification: e)).toList()
        ],
      ),
    );
  }
}
