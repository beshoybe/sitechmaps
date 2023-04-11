package com.sitech.sitechmaps.utils
import android.app.Activity
import android.content.Intent
import com.sitech.sitechmaps.activity.StartStripActivity
import io.flutter.plugin.common.MethodChannel
import java.io.Serializable

class Launcher {
    companion object{
         fun startNavigation(activity:Activity, arguments:Map<*,*>,result:MethodChannel.Result){
            val intent = Intent(activity, StartStripActivity::class.java)
            intent.putExtra("navArgs",arguments as Serializable)
             activity.startActivity(intent)
         }
    }
}