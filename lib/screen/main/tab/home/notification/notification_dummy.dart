import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/home/notification/vo/notification_type.dart';
import 'package:toss_app_div/screen/main/tab/home/notification/vo/vo_notification.dart';

final notificationDummies = <TtosNotification>[
  TtosNotification(
    NotificationType.tossPay,
    "이번주에 영화 한편 어때요? CGV할인 쿠폰이 도착했어요.",
    DateTime.now().subtract(1.hours),
  ),
  TtosNotification(
    NotificationType.stock,
    "인적분할에 대해 알려드릴게요.",
    DateTime.now().subtract(1.hours),
  ),
  TtosNotification(NotificationType.walk, "1000걸음 이상 걸었다면 포인트 받으세요.",
      DateTime.now().subtract(1.hours),
      isRead: true),
  TtosNotification(
    NotificationType.moneyTip,
    "유렵 식품 물가가 치솟고 있어요.\n 성영욱님, 유럽여행에 관심이 있다면 확인해보세요.",
    DateTime.now().subtract(8.hours),
  ),
  TtosNotification(NotificationType.luck, "이번주에 영화 한편 어때요? CGV할인 쿠폰이 도착했어요.",
      DateTime.now().subtract(11.hours),
      isRead: true),
  TtosNotification(
    NotificationType.people,
    "이번주에 영화 한편 어때요? CGV할인 쿠폰이 도착했어요.",
    DateTime.now().subtract(12.hours),
  ),
  TtosNotification(
    NotificationType.walk,
    "이번주에 영화 한편 어때요? CGV할인 쿠폰이 도착했어요.",
    DateTime.now().subtract(1.days),
  ),
  TtosNotification(
    NotificationType.luck,
    "이번주에 영화 한편 어때요? CGV할인 쿠폰이 도착했어요.",
    DateTime.now().subtract(1.days),
  ),
  TtosNotification(
    NotificationType.stock,
    "이번주에 급등 주 소식 받아보실래요?.",
    DateTime.now().subtract(1.days),
  ),
  TtosNotification(
    NotificationType.people,
    "함께 모임만들어서 참여해봐요.",
    DateTime.now().subtract(2.days),
  ),
];
