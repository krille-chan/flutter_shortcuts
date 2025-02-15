package im.fluffychat.flutter_shortcuts_new;

import android.app.Activity;
import android.content.Context;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;

public class FlutterShortcutsPlugin implements FlutterPlugin, ActivityAware {
  private static final String CHANNEL_ID = "im.fluffychat.flutter_shortcuts_new";
  private static final String TAG = "[Flutter Shortcuts]";

  public static String getTAG() {
    return TAG;
  }

  public static String getChannelId() {
    return CHANNEL_ID;
  }

  private MethodChannel channel;
  private MethodCallImplementation handler;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
    setupChannel(binding.getBinaryMessenger(), binding.getApplicationContext(), null);
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    teardownChannel();
  }

  @Override
  public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) {
    handler.setActivity(binding.getActivity());
  }

  @Override
  public void onDetachedFromActivity() {
    handler.setActivity(null);
  }

  @Override
  public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) {
    onAttachedToActivity(binding);
  }

  @Override
  public void onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity();
  }

  private void setupChannel(BinaryMessenger messenger, Context context, Activity activity) {
    channel = new MethodChannel(messenger, CHANNEL_ID);
    handler = new MethodCallImplementation(context, activity);
    channel.setMethodCallHandler(handler);
  }

  private void teardownChannel() {
    channel.setMethodCallHandler(null);
    channel = null;
    handler = null;
  }
}
