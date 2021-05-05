enum SharedPreferencesKey {
  userEnabledTwoFactor,
  userEnabledBiometricAuthentication,
  userAllowedCustomPushNotification,
  userAllowedSystemPushNotification,
  userEmail,
  userId,
  userName,
}

extension SharedPreferencesKeyExtension on SharedPreferencesKey {
  String? rawValue() {
    switch (this) {
      case SharedPreferencesKey.userEnabledTwoFactor:
        return 'userEnabledTwoFactor';
      case SharedPreferencesKey.userEnabledBiometricAuthentication:
        return 'userEnabledBiometricAuthentication';
      case SharedPreferencesKey.userAllowedCustomPushNotification:
        return 'userAllowedCustomPushNotification';
      case SharedPreferencesKey.userAllowedSystemPushNotification:
        return 'userAllowedSystemPushNotification';
      case SharedPreferencesKey.userEmail:
        return 'userEmail';
      case SharedPreferencesKey.userId:
        return 'userId';
      case SharedPreferencesKey.userName:
        return 'userName';
      default:
        return null;
    }
  }
}
