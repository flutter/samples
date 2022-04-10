abstract class SettingsPersistence {
  Future<bool> getMusicOn();

  Future<bool> getMuted({required bool defaultValue});

  Future<String> getPlayerName();

  Future<bool> getSoundsOn();

  Future<void> saveMusicOn(bool value);

  Future<void> saveMuted(bool value);

  Future<void> savePlayerName(String value);

  Future<void> saveSoundsOn(bool value);
}
