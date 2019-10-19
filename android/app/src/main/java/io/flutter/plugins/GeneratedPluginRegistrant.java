package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import tao.com.example.flutter_plugin05.FlutterPlugin05Plugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterPlugin05Plugin.registerWith(registry.registrarFor("tao.com.example.flutter_plugin05.FlutterPlugin05Plugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}