package com.sitech.sitechmaps.views

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import android.widget.FrameLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.get
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.findViewTreeLifecycleOwner
import com.mapbox.maps.MapView
import com.mapbox.navigation.base.options.NavigationOptions
import com.mapbox.navigation.core.MapboxNavigation
import com.mapbox.navigation.core.lifecycle.MapboxNavigationApp
import com.mapbox.navigation.core.lifecycle.MapboxNavigationObserver
import com.mapbox.navigation.core.lifecycle.requireMapboxNavigation
import com.mapbox.navigation.ui.maps.NavigationStyles
import com.sitech.sitechmaps.R
import com.sitech.sitechmaps.activity.StartStripActivity
import com.sitech.sitechmaps.databinding.NavigationBinding
import com.sitech.sitechmaps.databinding.TripSummaryBinding
import com.sitech.sitechmaps.utils.PluginUtilities
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.embedding.engine.plugins.lifecycle.HiddenLifecycleReference
import io.flutter.plugin.platform.PlatformView
import java.io.Serializable
import java.util.*

internal class NavigationView(context: Context,creationParams: Map<String?, Any?>?,private val id:Int,activity:Activity): PlatformView
     {
    private  val  context:Context = context
    private val creationParams=creationParams
    private  val activity:Activity=activity
   lateinit var  view:TripSummaryBinding
    override fun getView(): View? {


        val intent = Intent(context,StartStripActivity::class.java)
        intent.putExtra("navArgs",creationParams as Serializable)

        return  view.root
    }
    override fun dispose() {
        TODO("Not yet implemented")
    }
    init {
        view = TripSummaryBinding.inflate(activity.layoutInflater)

        Timer().scheduleAtFixedRate(object : TimerTask() {
            override fun run() {
                if(PluginUtilities.tripStatus=="started"){
                    PluginUtilities.time+=1.0
                    view.root.findViewById<TextView>(R.id.travelledDistance).text=PluginUtilities.distance.toString()
                    if(PluginUtilities.time/3600>0){
                        view.root.findViewById<TextView>(R.id.travelledTime).text="${PluginUtilities.time/3600} Hours"
                    }else{
                        view.root.findViewById<TextView>(R.id.travelledTime).text="${PluginUtilities.time/60} Min"
                    }
                }

            }
        }, 0,1000)
    }
     }


