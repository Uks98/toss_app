import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:toss_app_div/common/common.dart';

import '../../../../../common/widget/w_empty_expanded.dart';
import '../../../../../common/widget/w_tap.dart';
import './vo/vo_notification.dart';

class NotificationItemWidget extends StatefulWidget {
  final TtosNotification notification;
  final VoidCallback onTap;

  const NotificationItemWidget(
      {required this.onTap, super.key, required this.notification});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const leftPadding = 15.0;
  static const iconWidth = 25.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: widget.notification.isRead
            ? context.backgroundColor
            : context.appColors.unreadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Width(leftPadding),
                Image.asset(
                  widget.notification.type.iconPath,
                  width: iconWidth,
                ),
                widget.notification.type.name.text
                    .size(12)
                    .color(context.appColors.lessImportant)

                    .make(),
                emptyExpanded,
                timeago
                    .format(widget.notification.time,
                        locale: context.locale.languageCode)
                    .text
                    .size(13)
                    .color(context.appColors.lessImportant)

                    .make(),
                width10,
              ],
            ),
            widget.notification.description.text
                .make()
                .pOnly(left: leftPadding + iconWidth)
          ],
        ),
      ),
    );
  }
}
