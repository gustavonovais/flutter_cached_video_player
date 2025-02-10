// @dart = 3.0

import 'package:pigeon/pigeon_lib.dart';

class TextureMessage {
  int textureId = 0; // Default value
}

class LoopingMessage {
  int textureId = 0; // Default value
  bool isLooping = false; // Default value
}

class VolumeMessage {
  int textureId = 0; // Default value
  double volume = 0.0; // Default value
}

class PlaybackSpeedMessage {
  int textureId = 0; // Default value
  double speed = 1.0; // Default value
}

class PositionMessage {
  int textureId = 0; // Default value
  int position = 0; // Default value
}

class CreateMessage {
  String asset = ''; // Default value
  String uri = ''; // Default value
  String packageName = ''; // Default value
  String formatHint = ''; // Default value
  Map<String, String> httpHeaders = {}; // Default value
}

class MixWithOthersMessage {
  bool mixWithOthers = false; // Default value
}

@HostApi(dartHostTestHandler: 'TestHostVideoPlayerApi')
abstract class VideoPlayerApi {
  void initialize();
  TextureMessage create(CreateMessage msg);
  void dispose(TextureMessage msg);
  void setLooping(LoopingMessage msg);
  void setVolume(VolumeMessage msg);
  void setPlaybackSpeed(PlaybackSpeedMessage msg);
  void play(TextureMessage msg);
  PositionMessage position(TextureMessage msg);
  void seekTo(PositionMessage msg);
  void pause(TextureMessage msg);
  void setMixWithOthers(MixWithOthersMessage msg);
}