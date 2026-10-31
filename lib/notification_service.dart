class NotificationService {
  void sendNotification() {
    print("Sending general notification...");
  }
}

class EmailNotification extends NotificationService {
  @override
  void sendNotification() {
    print("Sending Email notification to user...");
  }
}

class SmsNotification extends NotificationService {
  @override
  void sendNotification() {
    print("Sending SMS notification to mobile...");
  }
}

class PushNotification extends NotificationService {
  @override
  void sendNotification() {
    print("Sending Push notification to app...");
  }
}
