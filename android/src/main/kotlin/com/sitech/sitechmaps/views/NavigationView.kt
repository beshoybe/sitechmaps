package com.sitech.sitechmaps.views

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.view.View
import android.widget.FrameLayout
import android.widget.TextView
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
import com.sitech.sitechmaps.activity.StartStripActivity
import com.sitech.sitechmaps.databinding.NavigationBinding
import com.sitech.sitechmaps.utils.PluginUtilities
import io.flutter.embedding.engine.plugins.lifecycle.HiddenLifecycleReference
import io.flutter.plugin.platform.PlatformView
import java.io.Serializable

internal class NavigationView(context: Context,creationParams: Map<String?, Any?>?,private val id:Int,): PlatformView{
    private  val  context = context
    private val creationParams=creationParams
    override fun getView(): View? {
        val intent = Intent(context,StartStripActivity::class.java)
        intent.putExtra("navArgs",creationParams as Serializable)
        context.startActivity(intent)
        val view=FrameLayout(context)
        view.id=id
        return  view
    }
    override fun dispose() {
        TODO("Not yet implemented")
    }
    init {


    }


}


