
import 'notification_type.dart';

class TtosNotification{
   final NotificationType type;
   final String description;
   final DateTime time;
  bool isRead;
  TtosNotification(this.type, this.description, this.time,{this.isRead = false});


}