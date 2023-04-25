package com.sitech.sitechmaps.views

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.view.View
import android.widget.TextView
import com.sitech.sitechmaps.R
import com.sitech.sitechmaps.activity.StartStripActivity
import com.sitech.sitechmaps.databinding.TripSummaryBinding
import com.sitech.sitechmaps.utils.PluginUtilities
import io.flutter.plugin.platform.PlatformView
import java.io.Serializable
import java.util.*

@SuppressLint("SuspiciousIndentation")
internal class NavigationView(context: Context, creationParams: Map<String?, Any?>?, private val id:Int, activity:Activity): PlatformView
     {
    private  val  context:Context = context
    private val creationParams=creationParams
    private  val activity:Activity=activity
   var  view:TripSummaryBinding
   var timer:Timer=Timer()
    override fun getView(): View? {


        val intent = Intent(context,StartStripActivity::class.java)
        intent.putExtra("navArgs",creationParams as Serializable)
        activity.startActivity(intent)
        return  view.root
    }
    override fun dispose() {
        timer.cancel()

    }
    init {
        view = TripSummaryBinding.inflate(activity.layoutInflater)

            timer.scheduleAtFixedRate(object : TimerTask() {
                override fun run() {
                   activity.runOnUiThread {
                       if (PluginUtilities.tripStatus == "started") {
                           PluginUtilities.time += 1.0
                           view.root.findViewById<TextView>(R.id.travelledDistance).text =
                               PluginUtilities.distance.toString()
                           if (PluginUtilities.time / 3600 > 0) {
                               view.root.findViewById<TextView>(R.id.travelledTime).text =
                                   "${PluginUtilities.time / 3600} Hours"
                           } else {
                               view.root.findViewById<TextView>(R.id.travelledTime).text =
                                   "${PluginUtilities.time / 60} Min"
                           }
                           println("Timer is ${PluginUtilities.time}")
                       }
                   }

                }
            }, 0,1000)


    }
     }


