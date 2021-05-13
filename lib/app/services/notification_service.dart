import 'package:blink/app/services/sincroniza_service.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class NotificationService {
  
  SincronizaService sincronizaService;

  NotificationService(this.sincronizaService) {
    onInit();
  }

  onInit() async {
    await OneSignal.shared.setRequiresUserPrivacyConsent(false);
    // await OneSignal.shared.consentGranted(true);
    await OneSignal.shared.init(
      "e74bc8f1-e581-463a-9dfe-5e01625bf14f",
      iOSSettings: {
        OSiOSSettings.autoPrompt: false,
        OSiOSSettings.inAppLaunchUrl: true
      }
    );
    OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);
    OneSignal.shared.setNotificationReceivedHandler((OSNotification notification) {
      // will be called whenever a notification is received
      print('Notificaçao: Received: '+ notification.toString());
      print(notification.payload.body);
      if (notification.payload.additionalData['operacao'] == 'sincronizar'){
        this.sincronizaService.iniciar();
      }
      
    });
    // OneSignal.shared.promptUserForPushNotificationPermission();
    OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      // will be called whenever a notification is opened/button pressed.
      print('Notificaçao: Opened: '+ result.toString());
    });
  }

}