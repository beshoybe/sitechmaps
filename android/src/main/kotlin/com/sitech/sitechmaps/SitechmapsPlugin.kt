package com.sitech.sitechmaps

import android.Manifest
import android.app.Activity
import android.content.Context
import android.content.pm.PackageManager
import android.widget.Toast
import androidx.annotation.NonNull
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.LifecycleOwner
import com.mapbox.navigation.base.options.NavigationOptions
import com.mapbox.navigation.core.MapboxNavigation
import com.mapbox.navigation.core.lifecycle.MapboxNavigationApp
import com.mapbox.navigation.core.lifecycle.MapboxNavigationObserver
import com.mapbox.navigation.ui.maps.NavigationStyles
import com.sitech.sitechmaps.databinding.NavigationBinding
import com.sitech.sitechmaps.factory.NavigationViewFactory
import com.sitech.sitechmaps.utils.Launcher
import io.flutter.Log

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.embedding.engine.plugins.lifecycle.HiddenLifecycleReference
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.platform.PlatformViewRegistry

/** SitechmapsPlugin */
class SitechmapsPlugin: FlutterPlugin, MethodCallHandler,ActivityAware{

  private lateinit var channel : MethodChannel
  private lateinit var resultMethod: Result
  private var currentActivity: Activity? = null
  private lateinit var currentContext: Context
  var platformViewRegistry: PlatformViewRegistry? = null
  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "sitechmaps")
    channel.setMethodCallHandler(this)
    platformViewRegistry=flutterPluginBinding.platformViewRegistry
  }

  override  fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    }else if(call.method=="tripSummary"){

    }
    else if(call.method=="startNavigation"){
      currentActivity?.let {
        Launcher.startNavigation(it,call.arguments as Map<*, *>,result)
        resultMethod=result
      }
    }
    else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    currentActivity = binding.activity
   platformViewRegistry!!. registerViewFactory("navigationmap",NavigationViewFactory(binding.activity))
  }

  override fun onDetachedFromActivityForConfigChanges() {
    TODO("Not yet implemented")
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    currentActivity = binding.activity
    platformViewRegistry!!. registerViewFactory("navigationmap",NavigationViewFactory(binding.activity))
  }

  override fun onDetachedFromActivity() {
    TODO("Not yet implemented")
  }


}


