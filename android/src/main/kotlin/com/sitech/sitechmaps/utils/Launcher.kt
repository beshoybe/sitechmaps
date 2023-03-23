package com.sitech.sitechmaps.utils

import android.app.Activity
import android.content.Intent
import com.sitech.sitechmaps.activity.StartStripActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.async
import kotlinx.coroutines.launch
import okhttp3.internal.wait
import java.io.Serializable

class Launcher {
    companion object{
         fun startNavigation(activity:Activity, arguments:Map<*,*>,result:MethodChannel.Result){
            val intent = Intent(activity, StartStripActivity::class.java)
            intent.putExtra("navArgs",arguments as Serializable)
             GlobalScope.launch (Dispatchers.Main) {
                 activity.startActivity(intent)
             }.wait()
             result.success("Started Nav")
        }
    }
}